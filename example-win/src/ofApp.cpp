#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
	_detector.setup();
	_input.listDevices();
	_input.setDeviceID(0);
	_input.setup(1280, 720);
}

//--------------------------------------------------------------
void ofApp::update(){
	_input.update();
	if (_input.isFrameNew()) {
		_faces = _detector.detect(_input.getPixels(), 0);
	}
}

//--------------------------------------------------------------
void ofApp::draw() {
	ofClear(0);

	_input.draw(0, 0);

	ofNoFill();
	for (auto face : _faces) {
		ofDrawRectangle(face);
	}
	ofFill();
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
