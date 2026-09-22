import sqlite3
from main import GlobalConfig
from pathlib import Path


config = GlobalConfig()



class Database():
    def __init__(self):
        connection = sqlite3.connect(Path(config.DB_FOLDER, ""))