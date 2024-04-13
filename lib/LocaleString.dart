import 'package:get/get.dart';
import 'package:flutter/material.dart';
class LocaleString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    //ENGLISH LANGUAGE
    'en_US':{
      'hello':'Hello World',
      'message':'Welcome to Flutter Languages',
      'title':'Flutter Language demo',
      'SelectLanguage':'Change Languages'
    },
    //HINDI LANGUAGE
    'hi_IN':{
      'hello': 'नमस्ते दुनिया',
      'message':'फ्लटर भाषाओं में आपका स्वागत है',
      'title':'फ्लटर भाषा डेमो',
      'SelectLanguage':'भाषा बदलो'
    },
    //KANNADA LANGUAGE
    'mr_IN':{
      'hello': 'हॅलो वर्ल्ड',
      'message':'फ्लटर भाषा मध्ये आपले स्वागत आहे',
      'title':'सफ्लटर भाषा डेमोा ',
      'SelectLanguage':'भाषा बदलें'
    }
  };
}