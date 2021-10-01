/*final items = [
  'Programming Languages',
  'Web Development ',
  'App development',
  'Useful Github Repositories'
];
*/
//final languagelist = ['C / C++', 'Python ', 'Java'];
final itemlist = {
  'Programming Languages': {
    'C / C++': {
      'items': [
        '1. CPlusPlus.com Tutorials',
        '2. LearnCPP.com Tutorials ',
        '3. Open Data Structure in C++'
      ],
      'subtitle': ['', '', '- Pat Morin'],
      'label': ['Website', 'Website', 'Book'],
      'links': [
        'http://www.cplusplus.com/doc/tutorial/',
        'https://www.learncpp.com',
        'http://opendatastructures.org/ods-cpp.pdf'
      ]
    },
    'Python ': {
      'items': [
        '1. Py4e.com Tutorials',
        '2. Automate the boring stuff with Python ',
        '3. Python 101'
      ],
      'subtitle': ['', '', '- Michael Driscoll'],
      'label': ['Website', 'Book', 'Book'],
      'links': [
        'https://py4e.com',
        'https://automatetheboringstuff.com/2e/chapter0/',
        'https://python101.pythonlibrary.org'
      ]
    },
    'Java': {
      'items': [
        '1. w3 Schools Java Tutorial',
        '2. Introduction to Programming in Java',
        '3. The Java Web Scraping Handbook',
        '4. Open Data Structures (in Java)',
        '5. Learn Java Online'
      ],
      'subtitle': [
        '',
        ' - Robert Sedgewick and Kevin Wayne',
        ' - Kevin Sahin',
        ' - Pet Morin',
        ''
      ],
      'label': ['Website', 'Book', 'Book', 'Book', 'Website'],
      'links': [
        'https://www.w3schools.com/java/',
        'https://introcs.cs.princeton.edu/java/home/',
        'https://www.scrapingbee.com/java-webscraping-book/',
        'http://opendatastructures.org/ods-java.pdf',
        'https://www.learnjavaonline.org'
      ]
    },
    'Dart': {
      "links": ["https://dart.dev/guides", "https://dartpad.dev/"],
      'items': ['1. Dart guide', '2. IDE'],
      'subtitle': [
        "- Dart guide for Flutter and programming, -Online IDE for dart"
      ],
      'label': ['Website', 'IDE'],
    }
  },
  'Web Development': {
    'HTML': {
      'items': [
        '1. w3 Schools Tutorials',
        '2. HTML Mozilla Docs',
        '3. TutorialsPoint'
      ],
      'subtitle': [
        '- w3schools.com',
        ' - Mozilla Docs',
        '- tutorialspoint.com'
      ],
      'label': ['Website', 'Website', 'Book'],
      'links': [
        'https://www.w3schools.com/html/',
        'https://developer.mozilla.org/en-US/docs/Web/HTML',
        'https://www.tutorialspoint.com/html/index.htm'
      ]
    },
    'CSS ': {
      'items': [
        '1. w3 Schools Tutorial',
        '2. CSSTricks.com Tutorials',
        '3. Freecodecamp responsive design'
      ],
      'subtitle': [
        ' - w3Schools.com',
        ' - CSSTricks.com',
        ' - Freecodecamp certification course'
      ],
      'label': ['Website', 'Website', 'Website'],
      'links': [
        'https://www.w3schools.com/css/default.asp',
        'https://css-tricks.com',
        'https://www.freecodecamp.org/learn/responsive-web-design/'
      ]
    },
    'JavaScript': {
      'items': [
        '1. w3 Schools Tutorial',
        '2. Freecodecamp JS Tutorials',
        '3. Building Front-End Web Apps with Plain JavaScript'
      ],
      'subtitle': [
        ' - w3schools.com',
        ' - Freecodecamp certification',
        ' - Gerd Wagner'
      ],
      'label': ['Website', 'Website', 'Book'],
      'links': [
        'https://www.w3schools.com/js/default.asp',
        'https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/',
        'https://web-engineering.info/JsFrontendApp-Book'
      ]
    }
  },
  'App Development': {
    'Java for App Development': {
      'items': [
        "1. Creating Android App in Java",
        "2. Advanced Android using Java",
        "3. Java Android Tutorial"
      ],
      'subtitle': [' - Google Course', ' - Google Course', '- javatpoint.com'],
      'label': ['Website', 'Website', 'Book'],
      'links': [
        'https://developer.android.com/codelabs/build-your-first-android-app',
        'https://developer.android.com/courses/advanced-training/overview',
        'https://www.javatpoint.com/android-tutorial'
      ]
    },
    'Kotlin': {
      'items': [
        '1. Android Basics in Kotlin',
        '2. Android Kotlin Fundamentals ',
        '3. Advanced Android in Kotlin'
      ],
      'subtitle': [
        ' - Google Kotlin Tutorial',
        ' - Google Kotlin Tutorial',
        ' - Google Kotlin Tutorial'
      ],
      'label': ['Website', 'Website', 'Website'],
      'links': [
        'https://developer.android.com/courses/android-basics-kotlin/course',
        'https://developer.android.com/codelabs/kotlin-android-training-welcome?index=..%2F..android-kotlin-fundamentals#0',
        'https://developer.android.com/codelabs/advanced-android-kotlin-training-welcome?index=..%2F..advanced-android-kotlin-training#0'
      ]
    },
    'Flutter': {
      'items': ['1. Flutter Docs', '2. Google Developers Flutter playlist'],
      'subtitle': [' - Flutter', ' - Google Developers Youtube'],
      'label': ['Website', 'Videos'],
      'links': [
        'https://flutter.dev/docs',
        'https://www.youtube.com/watch?v=fq4N0hgOWzU&list=PLOU2XLYxmsIJ7dsVN4iRuA7BT8XHzGtCr'
      ]
    },
    'Dart': {
      "links": ["https://dart.dev/guides", "https://dartpad.dev/"],
      'items': ['1. Dart guide', '2. IDE'],
      'subtitle': [
        "- Dart guide for Flutter and programming, -Online IDE for dart"
      ],
      'label': ['Website', 'IDE'],
    },
    'react native': {
      'items': ['1. React Native Docs', '2. All in one react resource'],
      'subtitle': [' - React Native', ' - React native resources'],
      'label': ['Website', 'website'],
      'links': [
        'https://reactnative.dev/docs/getting-started',
        'https://reactresources.com/'
      ]
    },
    'swift': {
      'items': ['1. swift Docs', '2. All in one swift resource'],
      'subtitle': [' -Swift Ios development', ' - swift resources by Apple'],
      'label': ['Documentation', 'website'],
      'links': [
        "https://swift.org/documentation/"
            'https://developer.apple.com/swift/resources/'
      ]
    },
  },
  'Machine Learning': {
    "SciKit-learn": {
      'items': [
        '1. classification',
        '2. Regression',
        '3. Official Documentation'
      ],
      'subtitle': [' - ML classification', ' - Regression'],
      'label': ['Website', 'Website'],
      'links': [
        'https://scikit-learn.org/stable/supervised_learning.html#supervised-learning',
        'https://scikit-learn.org/stable/supervised_learning.html#supervised-learning',
        'https://scikit-learn.org/stable/',
      ]
    },
    'Tensor Flow': {
      'items': ['tensorFlow Tutorial'],
      'subtitle': [' ML Tensor FLow'],
      'label': [
        'Tutorial',
      ],
      'links': [
        'https://www.tensorflow.org/tutorials',
      ]
    }
  }
};

final github = {
  'Useful Github Repositories': {
    'items': ['1. Free Programming Books', '2. Awesome CS Courses'],
    'subtitle': [' - EbookFoundation', ' - prakhar1989'],
    'links': [
      'https://github.com/EbookFoundation/free-programming-books',
      'https://github.com/prakhar1989/awesome-courses'
    ]
  }
};
