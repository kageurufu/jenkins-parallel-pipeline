from unittest import TestCase

class Test8TestCase(TestCase):
    def test_even(self):
        self.assertEqual(8 % 2, 0)

    def test_odd(self):
        self.assertEqual(8 % 2, 1)
