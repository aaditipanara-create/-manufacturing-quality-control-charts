CREATE TABLE Production_Lines (line_id INTEGER PRIMARY KEY, line_name TEXT, target_value REAL);
CREATE TABLE Sample_Batches (batch_id INTEGER PRIMARY KEY, line_id INTEGER, recorded_time TEXT, is_baseline INTEGER, batch_mean REAL, batch_range REAL);
CREATE TABLE Measurements (measurement_id INTEGER PRIMARY KEY, batch_id INTEGER, measured_value REAL);
CREATE TABLE Control_Limits (limit_id INTEGER PRIMARY KEY, line_id INTEGER, chart_type TEXT, ucl REAL, center_line REAL, lcl REAL);
CREATE TABLE Control_Alerts (alert_id INTEGER PRIMARY KEY, batch_id INTEGER, chart_type TEXT, reason TEXT);