class QA {
  final String question;
  final String answer;

  QA({
    required this.question,
    required this.answer,
  });

  static List<QA> qa = [
    QA(
        question:
            'When is our mobile app scheduled for launch?',
        answer:
            'We have scheduled the launch of our mobile app for the last week of June 2024, starting with the Android version available on the Play Store. Our product will launch from the IIT Madras campus to serve the first 100,000 pre-orders monthly.'),
    QA(
        question: 'What is the mission of Ofline for creating value?',
        answer:
            'Our mission is to solve the problems of discoverability, waiting, and uncertainty in local markets across the world. With innovative technology and a focus on customer needs, we are dedicated to creating seamless experiences for both customers and merchants.'),
    QA(
        question: 'What is the vision of Ofline for capturing value?',
        answer:
            'Our vision is to serve 1 billion local market customers globally on a daily basis. We aim to establish seamless connections between merchants and customers to redefine the local market experience.'),
    QA(
        question: 'What are the core values that Ofline adheres to?',
        answer:
            'Our core values are innovation, customer satisfaction and continuous learning. Our innovative spirit fuels our ability to deliver cutting-edge solutions that meet the evolving needs of our users. We will strive to build long-lasting relationships based on trust, responsiveness and a deep understanding of users unique challenges and goals. We embrace a culture of continuous learning and growth, both at the individual and organizational levels.')
  ];
}
