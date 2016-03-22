from unittest import TestCase

class Test1TestCase(TestCase):
    def test_even(self):
        self.assertEqual(1 % 2, 0)

    def test_odd(self):
        self.assertEqual(1 % 2, 1)
