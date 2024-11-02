from main import add

import pytest


def test_add():
    print("test add")
    assert add(1, 2) == 3
    assert add(3, 5) == 8
