from unittest import TestCase

class TestIVALITestCase(TestCase):
    def test_even(self):
        self.assertEqual(IVALI % 2, 0)

    def test_odd(self):
        self.assertEqual(IVALI % 2, 1)
