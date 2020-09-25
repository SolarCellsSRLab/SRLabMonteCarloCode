
"""
Generates a csv file for a solar cell composed of 3 layers of  P3HT, 1 layer of 2:1 P3HT:PCBM, 4 layers of 1:1 
P3HT:PCBM (2 with import and 2 with import2), 1 layer of 1:2 P3HT:PCBM,
and 3 layers of PCBM, for a coarsely graded "sandwich" structure
"""
import os
import pandas as pd
from multiprocessing import Pool

"""
import2_mctotal.csv = 100% acceptor (represented by all red)
import2_mc15.csv = 3:1 (acceptor : donor)
import2_mc7.csv = 2:1
import2_mc3.csv = 1:1
import_mc3.csv = 1:1
import_mc7.csv = 1:2
import_mc15.csv = 1:3
import_mctotal.csv = 100% donor (represented by all blue)
"""


class StrGenerator:
    # paths for donor/acceptor ratio
    CURRENT_DIR = os.path.dirname(__file__)
    path0 = CURRENT_DIR+"/import_mc3.csv"
    path1 = CURRENT_DIR+"/import_mc7.csv"
    path2 = CURRENT_DIR+"/import_mctotal.csv"
    path3 = CURRENT_DIR+"/import2_mc3.csv"
    path4 =CURRENT_DIR+"/import2_mc7.csv"
    path5 =CURRENT_DIR+"/import2_mctotal.csv"
    path6 =CURRENT_DIR+"/import_mc15.csv"
    path7 =CURRENT_DIR+"/import2_mc15.csv"
    # file need by the program
    code_file_path =CURRENT_DIR+"/import.csv"

    def __init__(self, process_id):
        self.process_id = process_id
        self.list_csv = self.read_csv_in_parallel()
        # lf stands for file used for the corresponding layer
        # the numbers indicate the layer number while the corresponding file indicates the file used to encpsulate the layer
        # it will come from the gui later
        self.lf0 = self.list_csv[0]
        self.lf1 = self.list_csv[0]
        self.lf2 = self.list_csv[1]
        self.lf3 = self.list_csv[2]
        self.lf4 = self.list_csv[2]
        self.lf5 = self.list_csv[2]
        self.lf6 = self.list_csv[3]
        self.lf7 = self.list_csv[3]
        self.lf8 = self.list_csv[4]
        self.lf9 = self.list_csv[5]
        self.lf10 = self.list_csv[5]
        self.lf11 = self.list_csv[5]
        # file used by the code
        self.code_file = self.list_csv[8]

        # third column, # fourth column
        self.z0, self.c0 = self.lf0[2], self.lf0[3]
        self.z1, self.c1 = self.lf1[2], self.lf1[3]
        self.z2, self.c2 = self.lf2[2], self.lf2[3]
        self.z3, self.c3 = self.lf3[2], self.lf3[3]
        self.z4, self.c4 = self.lf4[2], self.lf4[3]
        self.z5, self.c5 = self.lf5[2], self.lf5[3]
        self.z6, self.c6 = self.lf6[2], self.lf6[3]
        self.z7, self.c7 = self.lf7[2], self.lf7[3]
        self.z8, self.c8 = self.lf8[2], self.lf8[3]
        self.z9, self.c9 = self.lf9[2], self.lf9[3]
        self.z10, self.c10 = self.lf10[2], self.lf10[3]
        self.z11, self.c11 = self.lf11[2], self.lf11[3]
        self.z = self.code_file[2]
        self.c = self.code_file[3]

    def read_csv(self, filename):
        return pd.read_csv(filename, header=None)

    def read_csv_in_parallel(self):
        list_csv = []
        with Pool(processes=9) as pool:
            list_csv = pool.map(self.read_csv, [StrGenerator.path0, StrGenerator.path1, StrGenerator.path2, StrGenerator.path3,
                                                StrGenerator.path4, StrGenerator.path5, StrGenerator.path6, StrGenerator.path7, StrGenerator.code_file_path])
        return list_csv

    def add_c_to_structure(self, row_start, row_end):
       # 600000
        for m in range(row_start, row_end):
            if(self.z[m] >= 0 and self.z[m] < 5):
                self.c[m] = self.c11[m]
            elif (self.z[m] >= 5 and self.z[m] < 10):
                self.c[m] = self.c10[m]
            elif (self.z[m] >= 10 and self.z[m] < 15):
                self.c[m] = self.c9[m]
            elif (self.z[m] >= 15 and self.z[m] < 20):
                self.c[m] = self.c8[m]
            elif (self.z[m] >= 20 and self.z[m] < 25):
                self.c[m] = self.c7[m]
            elif (self.z[m] >= 25 and self.z[m] < 30):
                self.c[m] = self.c6[m]
            elif (self.z[m] >= 30 and self.z[m] < 35):
                self.c[m] = self.c0[m]
            elif (self.z[m] >= 35 and self.z[m] < 40):
                self.c[m] = self.c1[m]
            elif (self.z[m] >= 40 and self.z[m] < 45):
                self.c[m] = self.c2[m]
            elif (self.z[m] >= 45 and self.z[m] < 50):
                self.c[m] = self.c3[m]
            elif (self.z[m] >= 50 and self.z[m] < 55):
                self.c[m] = self.c4[m]
            elif (self.z[m] >= 55 and self.z[m] <= 60):
                self.c[m] = self.c5[m]

    def generate_ranges(self):
        ranges = []
        row_start = 0
        row_end = 30000
        while row_end <= 600000:
            ranges += [(row_start, row_end)]
            row_end += 30000
            row_start += 30000
        return ranges

    def generate_structure(self):
        ranges = self.generate_ranges()
        with Pool(processes=20) as pool:
            pool.starmap(self.add_c_to_structure, ranges)
        self.code_file[3] = self.c
        # generates a csv files that encodes the structure
        file_name = "structure"+str(self.process_id)+".csv"
        self.code_file.to_csv(file_name)


process1 = StrGenerator(2)
process1.generate_structure()
