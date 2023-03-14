#!/usr/bin/env python3

import tkinter as tk
import socket as sk
import time

class TeachPendant():
    def __init__(self):
        self._root = tk.Tk()
        self._socket_ = sk.socket(sk.AF_INET, sk.SOCK_STREAM)

        # Commands
        fn0 = lambda: self._socket_.send(bytes('0', 'utf-8'))
        fn1 = lambda: self._socket_.send(bytes('1', 'utf-8'))
        fn2 = lambda: self._socket_.send(bytes('2', 'utf-8'))
        fn3 = lambda: self._socket_.send(bytes('3', 'utf-8'))
        fn4 = lambda: self._socket_.send(bytes('4', 'utf-8'))

        def fn5():
            # Read the sensors
            self._socket_.send(bytes('5', 'utf-8'))
            time.sleep(0.5)
            humidity = self._socket_.recv(5).decode('utf-8')
            time.sleep(0.5)
            temperature = self._socket_.recv(5).decode('utf-8')

            # Print at the GUI
            text = 'Temp: ' + temperature + '\nHumidity: ' + humidity
            self._label.config(text = text)


        # Buttons
        self._front = tk.Button(self._root, text = 'Forward', command = fn0)
        self._back = tk.Button(self._root, text = 'Backward', command = fn1)
        self._right = tk.Button(self._root, text = 'Right', command = fn2)
        self._left = tk.Button(self._root, text = 'Left', command = fn3)
        self._stop = tk.Button(self._root,text = 'Stop', command = fn4)
        self._sensor = tk.Button(self._root, text = 'Sensor', command = fn5)

        # Label/frame
        self._frame = tk.LabelFrame(self._root, text = 'Robot status')
        self._label = tk.Label(self._frame, 
                               text = 'Temperature: 00.00 \nHumidity: 00.00', 
                               justify = tk.LEFT)

    def launch(self, ip, port):
        # Wifi
        self._socket_.connect((ip, port))

        # Buttons
        self._left.grid(column = 0, row = 1)
        self._front.grid(column = 1, row = 0)
        self._stop.grid(column = 1, row = 1)
        self._back.grid(column = 1, row = 2)
        self._right.grid(column = 2, row = 1)
        self._sensor.grid(column = 3, row = 3, columnspan = 2, sticky = 'we')

        # Label/frame
        self._frame.grid(column = 3, row = 0, columnspan = 2, rowspan = 3)
        self._label.pack()

        # Columns weights
        self._root.grid_columnconfigure(0, weight = 1)
        self._root.grid_columnconfigure(1, weight = 1)
        self._root.grid_columnconfigure(2, weight = 1)
        self._root.grid_columnconfigure(3, weight = 2)

        self._root.resizable(height = False, width = False)
        self._root.mainloop()



if __name__ == '__main__':
    pendant = TeachPendant()
    pendant.launch('192.168.0.191', 80)




