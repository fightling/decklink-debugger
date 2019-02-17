/**
 * DeviceProber represents an Interface to the static and always-true
 * information about a declink-device.
 * If the device allows auto-input and auto-detection, a CaptureDelegate will
 * be started, which will aquire realtime-information about the current signal
 * present on this device.
 * All calls to the CaptureDelegate are proxied through the DeviceProber, so
 * the DeviceProber is the primary interface to the main application.
 */

#include <stdio.h>
#include <assert.h>
#include <iostream>

#include "DeviceProber.h"

#include "scope_guard.hpp"
#include "log.h"

#define LLOG(x) LOG(x) << "DeviceProber: "

DeviceProber::DeviceProber(IDeckLink* deckLink) :
	m_deckLink(nullptr),
	m_deckLinkReleaser(&m_deckLink),

	m_captureDelegate(nullptr)
{
	LLOG(DEBUG2) << "reffing IDeckLink Interface";
	deckLink->AddRef();
	m_deckLink = deckLink;

	m_canInput = queryCanInput();
	m_canAutodetect = queryCanAutodetect();
	LLOG(DEBUG) << "canInput = " << m_canInput << " && canAutodetect = " << m_canAutodetect;

	if (m_canAutodetect && m_canInput)
	{
		LLOG(DEBUG) << "creating CaptureDelegate";
		m_captureDelegate = new CaptureDelegate(m_deckLink);
		m_captureDelegate->Start();
	}
}

IDeckLinkAttributes* DeviceProber::queryAttributesInterface(void)
{
	HRESULT result;
	IDeckLinkAttributes* deckLinkAttributes = NULL;

	LLOG(DEBUG1) << "querying IDeckLinkAttributes Interface";
	result = m_deckLink->QueryInterface(IID_IDeckLinkAttributes, (void **)&deckLinkAttributes);
	if (result != S_OK) {
		LLOG(ERROR) << "query failed";
		throw "Could not obtain the IDeckLinkAttributes interface";
	}

	return deckLinkAttributes;
}

bool DeviceProber::queryCanInput(void)
{
	HRESULT result;
	IDeckLinkInput* deckLinkInput = NULL;

	LLOG(DEBUG1) << "querying IDeckLinkInput Interface";
	result = m_deckLink->QueryInterface(IID_IDeckLinkInput, (void**)&deckLinkInput);
	RefReleaser<IDeckLinkInput> deckLinkInputReleaser(&deckLinkInput);

	return (result == S_OK);
}

bool DeviceProber::queryCanAutodetect(void)
{
	HRESULT result;
	IDeckLinkAttributes* deckLinkAttributes = NULL;
	RefReleaser<IDeckLinkAttributes> deckLinkAttributesReleaser(&deckLinkAttributes);

	LLOG(DEBUG1) << "querying IID_IDeckLinkAttributes Interface";
	result = m_deckLink->QueryInterface(IID_IDeckLinkAttributes, (void **)&deckLinkAttributes);
	throwIfNotOk(result, "Could not obtain the IDeckLinkAttributes interface");

	bool formatDetectionSupported;
	result = deckLinkAttributes->GetFlag(BMDDeckLinkSupportsInputFormatDetection, &formatDetectionSupported);
	throwIfNotOk(result, "Could not query BMDDeckLinkSupportsInputFormatDetection flag");

	return formatDetectionSupported;
}

bool DeviceProber::GetSignalDetected(void) {
	if (m_captureDelegate)
	{
		return m_captureDelegate->GetSignalDetected();
	}

	return false;
}

bool DeviceProber::IsSubDevice(void) {
	if (m_captureDelegate)
	{
		return m_captureDelegate->IsSubDevice();
	}

	return false;
}

std::string DeviceProber::GetDetectedMode(void)
{
	if (m_captureDelegate)
	{
		if(m_captureDelegate->GetSignalDetected())
		{
			return m_captureDelegate->GetDetectedMode();
		}
	}

	return "";
}

BMDPixelFormat DeviceProber::GetPixelFormat(void)
{
	if (m_captureDelegate)
	{
		if(m_captureDelegate->GetSignalDetected())
		{
			return m_captureDelegate->GetPixelFormat();
		}
	}

	return 0;
}

IDeckLinkVideoInputFrame* DeviceProber::GetLastFrame(void)
{
	if (m_captureDelegate)
	{
		return m_captureDelegate->GetLastFrame();
	}

	return NULL;
}

BMDVideoConnection DeviceProber::GetActiveConnection(void)
{
	if (m_captureDelegate)
	{
		return m_captureDelegate->GetActiveConnection();
	}

	return 0;
}

void DeviceProber::SelectNextConnection(void) {
	if (m_captureDelegate)
	{
		return m_captureDelegate->SelectNextConnection();
	}
}

std::string DeviceProber::GetDeviceName() {
	HRESULT result;

	char* deviceNameString = NULL;

	result = m_deckLink->GetDisplayName((const char **) &deviceNameString);
	if (result != S_OK)
	{
		throw "Failed to get the Name for the DeckLink Device";
	}

	return std::string(deviceNameString);
}
