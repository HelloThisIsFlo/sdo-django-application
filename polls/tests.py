from django.test import TestCase

# Create your tests here.
class QuestionMethodTests(TestCase):

    def test_first_test(self):
        print("Hello :D This is a test")
        self.assertIs(1 == 2, False)
