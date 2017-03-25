from django.test import TestCase
from .models import Question
from django.utils import timezone

# Create your tests here.
class QuestionMethodTests(TestCase):

    def test_first_test(self):
        print("Hello :D This is a test")
        self.assertIs(1 == 2, False)

    def test_with_db(self):
        q = Question(question_text="Test question question question question question :D ", pub_date=timezone.now())
        q.save()

        all = Question.objects.all()
        self.assertEqual(len(all), 1)

    def test_another_test(self):
        print("Testing github webhooks")
        self.assertEqual(1, 1)

    def test_one_more_test(self):
        print("One More test")
        self.assertEqual(1, 1)

