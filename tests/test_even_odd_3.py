from unittest import TestCase

class Test3TestCase(TestCase):
    def test_even(self):
        self.assertEqual(3 % 2, 0)

    def test_odd(self):
        self.assertEqual(3 % 2, 1)
