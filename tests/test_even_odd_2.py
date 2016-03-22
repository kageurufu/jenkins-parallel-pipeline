from unittest import TestCase

class Test2TestCase(TestCase):
    def test_even(self):
        self.assertEqual(2 % 2, 0)

    def test_odd(self):
        self.assertEqual(2 % 2, 1)
