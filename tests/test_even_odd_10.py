from unittest import TestCase

class Test10TestCase(TestCase):
    def test_even(self):
        self.assertEqual(10 % 2, 0)

    def test_odd(self):
        self.assertEqual(10 % 2, 1)
