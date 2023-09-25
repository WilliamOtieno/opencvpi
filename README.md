## OBJECT DETECTION USING COMPUTER VISION

### Installation
 
#### For Raspberry Pi users:-

Open your terminal emulator and run the `picvsetup.sh` script to build the dependencies from source automatically.

Do so by running the command `sudo chmod a+rwx picvsetup.sh` to make it executable then `sudo ./picvsetup.sh` to begin the build process.

#### For Other Linux users, MacOS users and Windows users:-

Create a virtual environment (optional) then run the following code in your command-line interface (cmd for Windows, Terminal for Linux & MacOS):-

`pip install -r requirements.txt`


### Usage

Run the main file `main.py` to launch the script and test if it works i.e. `pip3 install -r requirements.txt && python3 main.py`

In the same `python` file, use `line 3` if intended use is with the webcam; otherwise, comment out `line 3` and uncomment `line 5` if intended use is with a video file.

If use is with the video file, make sure to place the video file inside the project directory then write the video file name inside the python script in `line 5` of `main.py`
