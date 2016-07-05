#pragma once
#include <memory>
#include <vector>
#include "ofMain.h"

class ofxDlibFaceDetector {
public:
	ofxDlibFaceDetector();
	~ofxDlibFaceDetector();

	void setup();
	std::vector<ofRectangle> detect(const ofPixels &pixels, int upsample);
private:
	std::shared_ptr <void> _detector;
};