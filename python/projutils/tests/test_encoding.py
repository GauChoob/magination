import unittest
import projutils.encoding as encoding


class TestEncoding(unittest.TestCase):
    def test_encoding(self):
        text = "🡆🡇🧴🪑💍🌟💰📜🥣🍯🍃🌻🌴🍄💎❓Σ◿🔑 !',-.0123456789:/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz🔇🔊🛑🅐⭍"
        binary = encoding.encode(text)
        text2 = encoding.decode(binary)
        self.assertEqual(text, text2)
        with self.assertRaises(KeyError):
            text_bad = "à"
            encoding.encode(text_bad)
        with self.assertRaises(KeyError):
            binary_bad = b']'
            encoding.decode(binary_bad)


if __name__ == '__main__':
    unittest.main()
