from detection import getObjects
import cv2

cap = cv2.VideoCapture(1)  # default webcam on your system
cap.set(3, 640)  # resolution width
cap.set(4, 480)  # resolution height
while True:
    success, img = cap.read()
    result, objectInfo = getObjects(img, True)
    print(objectInfo)
    with open("outputs.txt", "w") as f:
        for obj in objectInfo:
            f.writelines(str(objectInfo))
        f.close()
    cv2.imshow("Output", img)
    cv2.waitKey(1)
