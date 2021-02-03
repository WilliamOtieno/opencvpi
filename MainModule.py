from ObjectDetectionModule import *

cap = cv2.VideoCapture(0)  # default webcam on your system
cap.set(3, 640)  # resolution width
cap.set(4, 480)  # resolution height
while True:
    success, img = cap.read()
    result, objectInfo = getObjects(img, True)
    print(objectInfo)
    saveData()
    cv2.imshow("Output", img)
    cv2.waitKey(1)
