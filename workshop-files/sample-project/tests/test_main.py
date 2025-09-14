"""
Tests for the main module
"""

import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from src.main import greet
from src.utils import add_numbers, multiply_numbers, format_message

def test_greet():
    """Test the greet function"""
    result = greet("Alice")
    assert "Alice" in result
    assert "Hello" in result
    print("✓ test_greet passed")

def test_add_numbers():
    """Test the add_numbers function"""
    assert add_numbers(2, 3) == 5
    assert add_numbers(-1, 1) == 0
    print("✓ test_add_numbers passed")

def test_multiply_numbers():
    """Test the multiply_numbers function"""
    assert multiply_numbers(3, 4) == 12
    assert multiply_numbers(0, 5) == 0
    print("✓ test_multiply_numbers passed")

def test_format_message():
    """Test the format_message function"""
    result = format_message("Hello World")
    assert result == "[INFO] Hello World"
    
    result = format_message("Error occurred", "ERROR")
    assert result == "[ERROR] Error occurred"
    print("✓ test_format_message passed")

if __name__ == "__main__":
    test_greet()
    test_add_numbers()
    test_multiply_numbers()
    test_format_message()
    print("\nAll tests passed! 🎉")