import os
import numpy as np
import pandas as pd
from pathlib import Path

CWD=Path.cwd()
RESULTS=CWD / 'results'

RESULTS_DICT = {}

print('RunID,TotalCycles,')

for dir in os.listdir(RESULTS):
    results_path = RESULTS / dir / 'GoogleTPU_v1_os'
    RESULTS_DICT[dir] = {
        'bandwidth': pd.read_csv(results_path / 'BANDWIDTH_REPORT.csv'),
        'compute': pd.read_csv(results_path / 'COMPUTE_REPORT.csv'),
        'access': pd.read_csv(results_path / 'DETAILED_ACCESS_REPORT.csv')

    }
    total_clock_cycles = RESULTS_DICT[dir]['compute'][' Total Cycles'].sum()
    print(f'{dir},{total_clock_cycles},')