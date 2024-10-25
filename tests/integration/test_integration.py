import unittest
import requests

class TestIntegration(unittest.TestCase):

    def test_homepage(self):
        response = requests.get('http://localhost')
        self.assertEqual(response.status_code, 200)
        self.assertIn('Welcome', response.text)

    def test_api_endpoint(self):
        response = requests.get('http://localhost/api/data')
        self.assertEqual(response.status_code, 200)
        self.assertIn('data', response.json())

    def test_database_connection(self):
        # Assuming there's an endpoint to check database connection
        response = requests.get('http://localhost/api/db_status')
        self.assertEqual(response.status_code, 200)
        self.assertIn('connected', response.json())

if __name__ == '__main__':
    unittest.main()
