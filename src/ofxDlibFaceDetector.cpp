#include "ofxDlibFaceDetector.hpp"

#include "dlib/image_processing/frontal_face_detector.h"
#include "dlib/image_processing.h"

static void toDLib(const ofPixels& inPix, dlib::array2d<dlib::rgb_pixel>& outPix) {
	int width = inPix.getWidth();
	int height = inPix.getHeight();
	if (width <= 0 || height <= 0) {
		abort();
	}
	outPix.set_size(height, width);
	int chans = inPix.getNumChannels();
	const unsigned char* data = inPix.getData();

	if (chans == 1) {
		for (unsigned n = 0; n < height; n++) {
			const unsigned char* v = &data[n * width *  chans];
			for (unsigned m = 0; m < width; m++)
			{
				unsigned char p = v[m];
				dlib::assign_pixel(outPix[n][m], p);
			}
		}
	}
	else if (chans == 3) {
		for (unsigned n = 0; n < height; n++)
		{
			const unsigned char* v = &data[n * width *  chans];
			for (unsigned m = 0; m < width; m++)
			{
				dlib::rgb_pixel p;
				p.red = v[m * 3];
				p.green = v[m * 3 + 1];
				p.blue = v[m * 3 + 2];
				dlib::assign_pixel(outPix[n][m], p);
			}
		}
	}
	else if (chans == 4) {
		for (unsigned n = 0; n < height; n++)
		{
			const unsigned char* v = &data[n * width *  chans];
			for (unsigned m = 0; m < width; m++)
			{
				dlib::rgb_pixel p;
				p.red = v[m * 4];
				p.green = v[m * 4 + 1];
				p.blue = v[m * 4 + 2];
				dlib::assign_pixel(outPix[n][m], p);
			}
		}
	}
	else {
		abort();
	}
}

ofxDlibFaceDetector::ofxDlibFaceDetector() {

}
ofxDlibFaceDetector::~ofxDlibFaceDetector() {

}
void ofxDlibFaceDetector::setup() {
	if (!_detector) {
		_detector = std::shared_ptr<dlib::frontal_face_detector>(new dlib::frontal_face_detector(dlib::get_frontal_face_detector()), [](void *p) {
			auto ptr = (dlib::frontal_face_detector *)p;
			delete ptr;
		});
	}
}
std::vector<ofRectangle> ofxDlibFaceDetector::detect(const ofPixels &pixels, int upsample) {
	this->setup();

	upsample = std::max(upsample, 0);

	std::vector<ofRectangle> faces;

	dlib::frontal_face_detector &detector = *(dlib::frontal_face_detector *)_detector.get();

	dlib::array2d<dlib::rgb_pixel> dlib_img;
	toDLib(pixels, dlib_img);

	for (int i = 0; i < upsample; ++i) {
		pyramid_up(dlib_img);
	}
	std::vector<dlib::rectangle> dlib_faces = detector(dlib_img);
	float divide = 1.0f / (1.0f + upsample);
	for (int i = 0; i < dlib_faces.size(); ++i) {
		auto face = dlib_faces[i];
		faces.emplace_back(face.left() * divide, face.top() * divide, face.width() * divide, face.height() * divide);
	}
	return faces;
}