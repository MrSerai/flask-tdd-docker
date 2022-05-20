from msilib.schema import Class
from pickle import FALSE


class BaseConfig:
    TESTING = False


class DevelopmentConfig(BaseConfig):
    pass

class TestingConfig(BaseConfig):
    TESTING=True


class ProductionConfig(BaseConfig):
    pass