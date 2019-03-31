TransformFourier: TransformFourier.o
	g++ -o TransformFourier TransformFourier.o -I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_shape -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core

TransformFourier.o: TransformFourier.cpp
	g++ -Wall -g -c TransformFourier.cpp -o TransformFourier.o `pkg-config opencv --cflags --libs`
clean:
	rm -f *.o TransformFourier
