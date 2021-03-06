try:
    import cv2
    import time

    print("Importing OpenCV-Python...")
    print("Module loaded successfully")
    time.sleep(2)
    print(f"OpenCV-Python Version: {cv2.__version__}")
    time.sleep(5)
    print("Module is ready for use.")
    time.sleep(2)
    exit()
except ModuleNotFoundError:
    print("It seems opencv-python is not installed in your system.")
    print("Kindly rerun the setup script.")
