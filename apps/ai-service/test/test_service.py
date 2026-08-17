import os
import sys
import unittest

sys.path.insert(
    0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src"))
)
from main import process_agent_prompt


class TestAIService(unittest.TestCase):
    def test_process_agent_prompt_success(self):
        result = process_agent_prompt("Hello Agent")
        self.assertEqual(result["status"], "success")
        self.assertEqual(result["prompt"], "Hello Agent")
        self.assertEqual(
            result["response"], "Agentic AI processed: Hello Agent"
        )

    def test_process_agent_prompt_empty(self):
        with self.assertRaises(ValueError):
            process_agent_prompt("   ")


if __name__ == "__main__":
    unittest.main()
