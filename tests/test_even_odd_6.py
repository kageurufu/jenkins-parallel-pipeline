from unittest import TestCase

class Test6TestCase(TestCase):
    def test_even(self):
        self.assertEqual(6 % 2, 0)

    def test_odd(self):
        self.assertEqual(6 % 2, 1)
