from unittest import TestCase

class Test9TestCase(TestCase):
    def test_even(self):
        self.assertEqual(9 % 2, 0)

    def test_odd(self):
        self.assertEqual(9 % 2, 1)
