
-- Create the dementia_predictions table
CREATE TABLE IF NOT EXISTS dementia_predictions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    input_type TEXT,
    age REAL,
    mmse REAL,
    depression INTEGER,
    duration REAL,
    tempo REAL,
    zero_crossing_rate REAL,
    rms_energy REAL,
    prediction INTEGER,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert mock records
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 67.1, 18.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.61, 142.41, 0.1841, 0.0269,
                1, '2025-02-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 68.8, 18.4, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-03-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 53.8, 15.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-07-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.1, 92.57, 0.1678, 0.2815,
                0, '2025-02-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 83.2, 17.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-07-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.32, 135.91, 0.1959, 0.1303,
                1, '2024-11-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 75.2, 27.2, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.14, 147.8, 0.1833, 0.0167,
                1, '2024-07-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.81, 152.41, 0.1656, 0.2121,
                1, '2025-01-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.43, 85.52, 0.0211, 0.154,
                0, '2025-01-31 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.75, 136.02, 0.1697, 0.0224,
                1, '2024-06-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.9, 18.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.1, 25.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.0, 16.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.36, 85.93, 0.0405, 0.2656,
                0, '2024-10-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.06, 104.34, 0.1507, 0.2335,
                0, '2024-08-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.17, 125.16, 0.0733, 0.0779,
                0, '2024-11-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.6, 22.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-06-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.33, 130.01, 0.0618, 0.1367,
                1, '2024-09-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.9, 22.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 75.3, 17.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.84, 153.83, 0.1267, 0.1572,
                0, '2024-06-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.0, 20.9, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.94, 115.47, 0.0773, 0.0711,
                1, '2025-01-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.3, 29.5, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.23, 120.24, 0.1491, 0.0423,
                1, '2024-09-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.23, 93.87, 0.1538, 0.1756,
                0, '2024-06-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.1, 19.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.32, 98.98, 0.0408, 0.1273,
                1, '2024-06-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.7, 16.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.27, 109.98, 0.0247, 0.0223,
                0, '2024-08-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.9, 29.0, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.43, 100.7, 0.0534, 0.2701,
                0, '2025-04-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.8, 25.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 50.2, 19.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-04-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.1, 19.4, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.58, 119.2, 0.1854, 0.2428,
                0, '2025-02-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.2, 25.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 53.8, 24.4, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.8, 15.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-06-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.1, 17.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 50.5, 18.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-12-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.32, 98.57, 0.0615, 0.201,
                1, '2025-03-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.5, 29.2, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 85.7, 21.3, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-03-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.4, 119.69, 0.1102, 0.2795,
                1, '2025-03-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.1, 23.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.62, 91.94, 0.0498, 0.057,
                1, '2024-05-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.6, 19.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.43, 101.49, 0.0931, 0.1721,
                0, '2024-12-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.99, 107.23, 0.0153, 0.287,
                0, '2024-10-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.7, 27.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.79, 109.53, 0.0705, 0.1988,
                1, '2024-12-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.2, 132.27, 0.0658, 0.2225,
                1, '2025-01-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.09, 136.76, 0.1282, 0.137,
                0, '2024-11-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.63, 128.14, 0.1254, 0.1063,
                0, '2024-10-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.31, 121.16, 0.1958, 0.2129,
                1, '2024-05-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.0, 17.9, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-03-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.6, 25.0, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.6, 99.26, 0.0825, 0.2331,
                1, '2024-07-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.42, 101.94, 0.1247, 0.2558,
                0, '2024-10-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.5, 22.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.8, 146.83, 0.1546, 0.2421,
                0, '2025-02-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.69, 133.46, 0.0524, 0.2425,
                1, '2025-02-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.19, 138.13, 0.153, 0.2745,
                0, '2025-02-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.6, 28.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.1, 16.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.4, 17.0, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-09-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.3, 19.1, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-03-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.5, 20.5, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-01-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.41, 101.97, 0.1528, 0.1679,
                0, '2024-12-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.4, 20.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-05-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.47, 156.05, 0.1334, 0.0773,
                0, '2025-04-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.76, 126.47, 0.1543, 0.1992,
                0, '2025-04-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.67, 146.64, 0.0524, 0.1652,
                0, '2025-02-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.0, 17.0, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-06-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.4, 25.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-07-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 83.1, 28.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.6, 93.16, 0.0178, 0.2919,
                1, '2024-05-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.29, 84.57, 0.0489, 0.0409,
                0, '2024-04-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 59.4, 18.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.54, 138.48, 0.1167, 0.1309,
                0, '2024-06-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.85, 96.6, 0.0319, 0.2707,
                1, '2024-08-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.3, 102.15, 0.1704, 0.1842,
                1, '2024-08-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.7, 25.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-10-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.8, 16.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.1, 24.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.73, 127.08, 0.1041, 0.1347,
                0, '2024-08-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 68.5, 21.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.4, 80.3, 0.0666, 0.0646,
                0, '2024-10-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.18, 109.49, 0.066, 0.152,
                0, '2024-07-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.3, 24.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.6, 27.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 61.6, 23.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.9, 29.5, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 59.3, 18.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-10-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.68, 104.06, 0.1029, 0.1897,
                0, '2024-10-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.0, 16.6, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.18, 113.52, 0.1641, 0.0682,
                1, '2024-09-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.1, 26.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-01-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.8, 19.4, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.0, 27.1, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-05-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.1, 29.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.54, 97.18, 0.011, 0.0259,
                0, '2024-10-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.19, 82.22, 0.0595, 0.1527,
                1, '2024-08-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.9, 17.5, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-01-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.0, 20.8, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-04-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 80.7, 27.9, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.1, 28.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-05-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.8, 19.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.79, 86.78, 0.152, 0.1051,
                1, '2025-01-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 56.0, 27.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.9, 24.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-31 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.0, 25.9, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.82, 150.64, 0.166, 0.1877,
                0, '2025-02-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.0, 23.8, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-06-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.1, 26.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-11-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.03, 152.99, 0.1249, 0.0963,
                1, '2024-11-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.76, 137.77, 0.1965, 0.0879,
                0, '2025-02-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.47, 116.24, 0.0529, 0.0586,
                0, '2025-03-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.22, 143.54, 0.192, 0.2983,
                0, '2025-03-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.87, 159.3, 0.1787, 0.2673,
                1, '2024-11-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 75.5, 22.3, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-09-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.9, 24.2, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-02-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 56.3, 16.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.6, 119.91, 0.0296, 0.2471,
                0, '2025-02-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 53.1, 22.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.5, 22.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-04-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.46, 89.3, 0.0813, 0.0228,
                0, '2024-10-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.2, 20.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.59, 94.82, 0.1585, 0.0823,
                0, '2024-07-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.7, 137.44, 0.1966, 0.0594,
                1, '2024-12-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.7, 15.9, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.35, 126.4, 0.133, 0.1835,
                0, '2024-04-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.28, 131.4, 0.064, 0.2886,
                1, '2024-11-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.69, 100.72, 0.133, 0.2261,
                1, '2024-07-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.3, 16.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 86.4, 18.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 85.3, 18.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.0, 21.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.95, 96.16, 0.1925, 0.1566,
                1, '2025-01-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.07, 99.44, 0.0493, 0.1364,
                1, '2025-02-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.36, 97.26, 0.1586, 0.2858,
                0, '2025-04-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 84.5, 22.5, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 61.6, 28.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.6, 22.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.5, 124.23, 0.1076, 0.0242,
                1, '2025-04-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.37, 143.5, 0.032, 0.2471,
                0, '2024-06-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.1, 16.5, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-02-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.0, 27.5, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 67.1, 15.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.21, 106.17, 0.1252, 0.0668,
                0, '2024-12-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.85, 129.25, 0.088, 0.1778,
                0, '2025-01-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.97, 111.77, 0.0226, 0.0892,
                0, '2024-09-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.1, 19.5, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.8, 19.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.5, 28.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-10-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.44, 141.47, 0.032, 0.1432,
                1, '2024-07-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.44, 127.62, 0.1071, 0.0311,
                0, '2024-11-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.6, 26.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-12-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.2, 19.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.3, 22.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.88, 133.01, 0.087, 0.2016,
                0, '2024-11-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.76, 124.95, 0.0668, 0.0847,
                0, '2024-08-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.39, 104.86, 0.0617, 0.0118,
                1, '2024-08-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.9, 29.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.4, 25.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-03-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.8, 21.8, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-03-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.35, 113.45, 0.1323, 0.115,
                1, '2025-03-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.18, 101.33, 0.091, 0.2954,
                0, '2024-06-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.2, 20.9, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-03-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.2, 17.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.15, 123.73, 0.054, 0.1182,
                1, '2024-12-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 68.3, 23.9, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-06-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.29, 157.11, 0.1902, 0.0741,
                0, '2025-02-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.99, 141.12, 0.037, 0.0974,
                1, '2024-09-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.64, 129.99, 0.1072, 0.1777,
                1, '2025-02-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.8, 20.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-04-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 85.7, 22.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.18, 139.1, 0.0534, 0.2489,
                1, '2024-10-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.82, 122.0, 0.0712, 0.12,
                0, '2024-09-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.96, 111.59, 0.1954, 0.2989,
                1, '2024-05-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 80.7, 25.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 56.9, 29.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.8, 28.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.7, 29.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-02-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.7, 28.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.53, 114.0, 0.1621, 0.1232,
                0, '2024-07-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.75, 118.93, 0.0232, 0.0139,
                0, '2024-07-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.54, 94.52, 0.0281, 0.1118,
                0, '2024-11-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.6, 19.2, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 75.9, 29.2, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.9, 18.4, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.57, 80.55, 0.1924, 0.0569,
                0, '2025-02-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.4, 21.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.13, 145.92, 0.0212, 0.2619,
                0, '2025-04-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.32, 158.44, 0.1546, 0.2659,
                0, '2024-12-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.1, 16.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 81.8, 20.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.4, 138.04, 0.1553, 0.2797,
                1, '2024-07-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 83.6, 25.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-31 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 83.1, 15.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.0, 22.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-04-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.7, 27.0, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.7, 114.01, 0.0463, 0.2624,
                1, '2024-08-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.32, 85.57, 0.1589, 0.0135,
                1, '2024-12-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.28, 125.59, 0.1494, 0.2325,
                1, '2024-10-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.97, 131.57, 0.1796, 0.2667,
                0, '2024-05-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.9, 21.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-05-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.45, 144.83, 0.1083, 0.2997,
                0, '2024-08-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.85, 144.34, 0.0194, 0.2278,
                1, '2024-06-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.6, 21.0, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-04-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.85, 141.24, 0.1889, 0.1293,
                1, '2024-05-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.4, 24.3, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-02-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.94, 120.31, 0.0197, 0.0878,
                0, '2024-07-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 55.2, 18.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.45, 104.66, 0.1635, 0.1835,
                0, '2024-10-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.92, 102.89, 0.1382, 0.2385,
                1, '2024-12-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.38, 86.34, 0.0329, 0.1121,
                0, '2024-07-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.7, 27.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-01-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.69, 104.01, 0.0939, 0.201,
                0, '2024-11-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.5, 18.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-01-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.6, 29.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.96, 125.58, 0.0535, 0.1966,
                0, '2025-01-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.28, 150.8, 0.0503, 0.1598,
                1, '2025-01-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 86.1, 26.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.09, 124.51, 0.1868, 0.2467,
                0, '2025-02-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.1, 29.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-03-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.86, 123.02, 0.1726, 0.2005,
                0, '2024-11-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.2, 21.2, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.51, 159.44, 0.0962, 0.1348,
                0, '2024-09-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.8, 150.88, 0.0161, 0.1129,
                0, '2025-04-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.09, 94.75, 0.1974, 0.1286,
                0, '2025-04-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 73.8, 25.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 61.2, 26.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-12-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.7, 26.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-10-31 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.3, 21.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-05-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.14, 110.11, 0.1669, 0.2364,
                0, '2024-12-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.68, 116.66, 0.0686, 0.0483,
                0, '2025-01-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 61.2, 19.6, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.91, 147.44, 0.066, 0.1428,
                1, '2024-09-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.11, 119.35, 0.0314, 0.0599,
                0, '2025-01-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.61, 84.8, 0.1852, 0.276,
                1, '2025-02-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 86.5, 25.3, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-04-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.6, 17.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.99, 101.98, 0.0635, 0.189,
                0, '2024-08-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 67.6, 25.5, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-03-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 81.2, 21.4, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.3, 27.0, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-05-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.0, 27.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.8, 143.27, 0.149, 0.1847,
                1, '2025-01-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.75, 89.16, 0.1572, 0.1497,
                0, '2024-07-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.74, 151.13, 0.1263, 0.1799,
                1, '2025-01-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.81, 135.61, 0.0338, 0.0462,
                1, '2024-10-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 80.1, 27.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.73, 124.63, 0.0898, 0.1685,
                1, '2024-08-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.16, 104.24, 0.1374, 0.1804,
                0, '2024-08-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 56.2, 15.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-03-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.8, 28.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-11-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.85, 156.52, 0.1064, 0.0156,
                1, '2025-01-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.49, 149.8, 0.1956, 0.1738,
                1, '2025-01-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.4, 16.1, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-06-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.0, 26.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.22, 158.21, 0.0107, 0.1699,
                1, '2024-10-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.4, 29.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.05, 112.35, 0.1042, 0.0991,
                0, '2024-12-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.33, 118.33, 0.0944, 0.0792,
                0, '2025-04-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 84.7, 19.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-09-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.7, 27.5, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.77, 148.13, 0.071, 0.0349,
                1, '2024-11-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.1, 17.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.53, 154.85, 0.1622, 0.1736,
                0, '2024-12-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.88, 126.75, 0.1664, 0.2573,
                1, '2024-09-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.76, 127.44, 0.0346, 0.0981,
                0, '2024-10-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.49, 83.63, 0.0564, 0.2092,
                0, '2024-06-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.18, 97.42, 0.1365, 0.1755,
                1, '2025-04-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 53.8, 24.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.3, 136.83, 0.0851, 0.0636,
                0, '2024-11-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.38, 111.82, 0.0106, 0.2347,
                1, '2024-12-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.34, 141.52, 0.1826, 0.0726,
                1, '2025-01-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.99, 135.35, 0.1269, 0.0608,
                1, '2024-06-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.0, 18.5, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.3, 16.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.54, 126.61, 0.1015, 0.2147,
                1, '2024-05-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.0, 19.2, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.6, 15.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.33, 81.96, 0.1498, 0.0348,
                0, '2024-04-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.8, 15.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.4, 23.2, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.51, 108.29, 0.152, 0.2586,
                1, '2025-03-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.5, 85.92, 0.0424, 0.0476,
                0, '2025-02-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 73.7, 27.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.0, 27.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-04-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.73, 131.68, 0.0285, 0.1581,
                1, '2025-02-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.9, 25.6, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.93, 139.66, 0.1723, 0.0143,
                0, '2025-03-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 73.4, 26.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-01-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.3, 15.4, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.09, 94.67, 0.0989, 0.0283,
                1, '2024-11-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.43, 120.83, 0.1609, 0.1111,
                0, '2025-02-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.6, 18.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.0, 17.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-04-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 73.3, 23.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.64, 100.14, 0.0378, 0.2743,
                0, '2024-12-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.9, 16.8, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-08-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.0, 150.83, 0.182, 0.0354,
                0, '2024-10-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 85.4, 21.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.5, 26.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-04-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.7, 23.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-04-29 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.66, 109.78, 0.1637, 0.0374,
                0, '2024-06-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.7, 17.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-01-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.8, 17.9, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.03, 143.28, 0.14, 0.1505,
                1, '2024-05-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.33, 157.71, 0.0322, 0.1942,
                1, '2025-01-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.95, 142.44, 0.1367, 0.2204,
                0, '2024-09-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.02, 116.51, 0.0364, 0.1845,
                1, '2024-11-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.1, 18.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.6, 127.3, 0.1372, 0.1447,
                0, '2024-08-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.86, 136.4, 0.0234, 0.0724,
                0, '2024-07-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.6, 24.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-04-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.62, 157.51, 0.0821, 0.0386,
                1, '2025-01-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 67.6, 28.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.47, 131.29, 0.1862, 0.2414,
                1, '2024-06-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.0, 26.2, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-10-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.7, 20.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 50.9, 16.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-07-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.9, 25.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.01, 158.66, 0.0938, 0.0407,
                1, '2025-03-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.86, 116.19, 0.1697, 0.0287,
                0, '2025-02-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.37, 87.25, 0.0629, 0.1566,
                1, '2024-08-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.9, 25.2, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.0, 155.89, 0.1476, 0.068,
                0, '2024-07-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.52, 149.51, 0.017, 0.234,
                1, '2024-07-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.3, 26.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.37, 150.5, 0.0631, 0.0268,
                0, '2024-07-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.8, 24.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.23, 134.8, 0.0864, 0.1346,
                1, '2024-10-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.72, 113.71, 0.0759, 0.1716,
                0, '2025-01-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 88.6, 22.9, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.3, 19.0, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.7, 23.9, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-03-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.44, 120.89, 0.1227, 0.039,
                0, '2024-10-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.63, 133.47, 0.1806, 0.1649,
                0, '2025-01-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.0, 24.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.4, 18.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.5, 28.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 78.6, 27.4, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-01-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.8, 24.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-08-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 55.0, 28.7, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.22, 102.62, 0.1592, 0.2267,
                1, '2024-07-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.3, 21.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-10-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.8, 15.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.74, 150.96, 0.0416, 0.1446,
                0, '2025-03-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.1, 24.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.16, 88.17, 0.1266, 0.1276,
                0, '2025-02-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.72, 125.59, 0.0922, 0.2863,
                0, '2024-09-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.88, 89.51, 0.132, 0.222,
                0, '2024-10-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 50.7, 21.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.2, 27.0, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 59.0, 19.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-01-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 89.4, 23.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.42, 130.86, 0.1399, 0.01,
                1, '2024-12-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.7, 24.4, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 55.3, 25.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.3, 25.5, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.99, 124.95, 0.1061, 0.094,
                0, '2024-11-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.37, 106.26, 0.0266, 0.2562,
                1, '2025-02-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.66, 137.61, 0.1041, 0.2527,
                1, '2024-09-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.9, 27.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-10-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.23, 148.22, 0.0218, 0.1152,
                0, '2025-04-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.57, 132.57, 0.0728, 0.223,
                1, '2025-03-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.68, 91.69, 0.0943, 0.1347,
                0, '2024-11-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.0, 23.7, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-12-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.0, 23.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-04-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.44, 96.01, 0.0182, 0.2737,
                1, '2025-03-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.83, 142.57, 0.0674, 0.0427,
                1, '2024-11-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 83.5, 19.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-14 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 73.3, 29.5, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-07-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.7, 15.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-12-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.1, 15.2, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 75.4, 28.2, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-06-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.9, 25.3, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-12-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.4, 29.5, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-02-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 59.4, 29.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-10-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 67.3, 21.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-09-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 63.3, 20.9, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-12-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 60.3, 29.6, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.73, 89.82, 0.1736, 0.0778,
                0, '2024-07-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.3, 19.1, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-03-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.91, 93.54, 0.1196, 0.2317,
                1, '2024-11-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.63, 153.11, 0.0822, 0.2133,
                0, '2024-07-16 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.8, 100.36, 0.1602, 0.0955,
                0, '2024-09-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.0, 24.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                7.81, 116.92, 0.0414, 0.2534,
                1, '2025-04-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.1, 27.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-05-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.23, 142.54, 0.0264, 0.0755,
                1, '2024-08-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.6, 29.8, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-05-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.2, 20.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.8, 105.47, 0.1564, 0.0616,
                0, '2024-11-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.12, 91.11, 0.0865, 0.0631,
                1, '2025-04-23 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.49, 86.61, 0.0579, 0.0304,
                1, '2024-08-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.1, 152.7, 0.0956, 0.2113,
                1, '2024-12-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.5, 15.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-02-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.6, 22.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-01-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.21, 120.08, 0.1781, 0.0952,
                1, '2024-09-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.9, 18.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.31, 100.26, 0.1353, 0.1554,
                1, '2024-07-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 62.1, 24.7, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.89, 96.55, 0.062, 0.1044,
                1, '2024-06-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.72, 98.24, 0.0317, 0.2927,
                1, '2025-03-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.2, 29.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2025-04-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 66.2, 29.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.85, 159.87, 0.1667, 0.1473,
                0, '2024-10-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.69, 104.36, 0.027, 0.1691,
                0, '2024-06-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.62, 141.01, 0.0952, 0.2291,
                1, '2025-03-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.87, 150.78, 0.1205, 0.131,
                0, '2024-06-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.66, 129.63, 0.0919, 0.2097,
                1, '2024-07-25 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.88, 124.04, 0.0449, 0.0825,
                1, '2024-12-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 80.4, 24.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-07-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.1, 29.2, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-12-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 86.6, 25.8, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.5, 135.92, 0.0403, 0.2569,
                0, '2024-08-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.84, 151.85, 0.0499, 0.211,
                1, '2024-08-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.64, 114.14, 0.027, 0.0506,
                1, '2025-03-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.91, 144.2, 0.051, 0.0964,
                0, '2024-07-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.5, 26.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.08, 124.82, 0.0908, 0.1221,
                0, '2025-04-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.48, 95.98, 0.0555, 0.1687,
                1, '2024-06-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.14, 117.12, 0.074, 0.161,
                0, '2024-11-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 55.9, 22.4, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-07-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.28, 104.36, 0.1513, 0.1152,
                1, '2024-12-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.58, 101.02, 0.0383, 0.0686,
                0, '2024-08-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.1, 22.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-05-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.7, 15.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-11-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 72.5, 16.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-07-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.78, 151.24, 0.0917, 0.1015,
                0, '2024-06-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.6, 20.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.61, 121.95, 0.021, 0.2873,
                1, '2024-11-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.15, 121.63, 0.0603, 0.1297,
                0, '2024-12-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.7, 29.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-01-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.8, 20.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-10-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 77.7, 22.6, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-08-27 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.6, 24.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 71.0, 16.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-11-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 59.2, 25.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-04-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.55, 158.78, 0.187, 0.11,
                0, '2024-06-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.33, 107.15, 0.021, 0.2492,
                1, '2024-11-07 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 52.6, 21.0, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-10-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.2, 126.28, 0.1884, 0.0353,
                1, '2024-08-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.18, 133.4, 0.1555, 0.2006,
                0, '2024-07-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 80.2, 21.4, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-02-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.51, 101.19, 0.1174, 0.2178,
                0, '2024-12-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.22, 118.41, 0.1435, 0.294,
                0, '2024-05-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 82.1, 29.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-12-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 57.3, 28.9, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-07-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                9.76, 145.07, 0.1905, 0.2482,
                0, '2024-08-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.7, 18.8, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-09-06 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.0, 16.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.19, 143.03, 0.0265, 0.023,
                0, '2024-12-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 58.6, 15.8, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-04-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.72, 105.31, 0.1049, 0.1358,
                1, '2024-11-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.02, 110.22, 0.1168, 0.1628,
                1, '2024-08-02 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 56.2, 28.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-10-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.65, 123.87, 0.1269, 0.2658,
                0, '2025-04-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.8, 17.6, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-02-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.66, 148.31, 0.1602, 0.2523,
                1, '2024-12-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.6, 88.43, 0.1829, 0.1533,
                1, '2024-10-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.99, 153.15, 0.171, 0.0274,
                1, '2025-01-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.72, 108.66, 0.1913, 0.0663,
                1, '2024-06-17 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 76.1, 25.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-08-03 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.15, 141.69, 0.1714, 0.2361,
                0, '2024-11-22 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 61.3, 21.7, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-09-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.73, 151.37, 0.1756, 0.1974,
                1, '2024-05-04 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 85.7, 15.4, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-01-28 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.52, 81.67, 0.1266, 0.0653,
                0, '2024-05-18 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.07, 81.77, 0.1306, 0.2068,
                0, '2024-12-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 64.7, 20.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-01-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                4.8, 88.34, 0.1821, 0.0243,
                1, '2025-01-19 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.08, 115.37, 0.0735, 0.1183,
                0, '2024-11-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 51.4, 24.1, 1,
                NULL, NULL, NULL, NULL,
                0, '2024-10-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 74.6, 18.9, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-12-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.57, 117.05, 0.087, 0.1994,
                0, '2024-05-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.51, 87.81, 0.093, 0.0826,
                1, '2024-10-31 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                8.1, 97.37, 0.158, 0.2439,
                1, '2025-03-09 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 53.8, 28.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2025-03-01 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.9, 28.1, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-10-05 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 54.0, 30.0, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-11-24 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                1.86, 112.21, 0.0273, 0.1507,
                0, '2024-08-12 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 65.9, 19.3, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-10-15 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                3.95, 104.39, 0.0992, 0.1134,
                0, '2024-08-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 87.0, 19.5, 1,
                NULL, NULL, NULL, NULL,
                0, '2025-03-21 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                5.2, 146.75, 0.1396, 0.23,
                0, '2024-11-13 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                2.59, 104.24, 0.0649, 0.1021,
                1, '2024-06-10 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 79.1, 24.9, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-07-11 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 69.0, 28.0, 0,
                NULL, NULL, NULL, NULL,
                1, '2024-06-08 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.4, 21.3, 0,
                NULL, NULL, NULL, NULL,
                0, '2024-05-26 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'audio', NULL, NULL, NULL,
                6.72, 148.31, 0.159, 0.0915,
                1, '2024-09-30 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 88.3, 17.3, 1,
                NULL, NULL, NULL, NULL,
                1, '2024-06-20 00:54:40'
            );
INSERT INTO dementia_predictions (
                input_type, age, mmse, depression,
                duration, tempo, zero_crossing_rate, rms_energy,
                prediction, timestamp
            ) VALUES (
                'clinical', 70.0, 24.1, 1,
                NULL, NULL, NULL, NULL,
                1, '2025-04-03 00:54:40'
            );
