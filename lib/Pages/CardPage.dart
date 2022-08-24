import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_game/main.dart';
import 'package:wrapped_korean_text/wrapped_korean_text.dart';

class CardPage extends StatefulWidget {
  const CardPage(
      {Key? key, required this.deckIndex, required this.cardCategory})
      : super(key: key);
  final int deckIndex;
  final String cardCategory;

  State<CardPage> createState() => _CardPageState(
      deckIndex: this.deckIndex, cardCategory: this.cardCategory);
}

class _CardPageState extends State<CardPage> {
  _CardPageState(
      {Key? key, required this.deckIndex, required this.cardCategory});

  final AppinioSwiperController controller = AppinioSwiperController();
  late int deckIndex;
  late String cardCategory;

  late List<List<Widget>> Break_It_1 = [
    Break_It_1_1,
    Break_It_1_2,
    Break_It_1_3,
  ];

  late List<List<Widget>> Break_It_2 = [
    Break_It_2_1,
    Break_It_2_2,
    Break_It_2_3,
  ];
  late List<List<Widget>> University = [
    University_1,
    University_2,
    University_3,
  ];
  late List<List<Widget>> Love = [
    Love_1,
    Love_2,
    Love_3,
  ];
  late List<List<Widget>> Alcohol_1 = [
    Alcohol_1_1,
    Alcohol_1_2,
    Alcohol_1_3,
  ];
  late List<List<Widget>> Alcohol_2 = [
    Alcohol_2_1,
    Alcohol_2_2,
    Alcohol_2_3,
  ];
  late List<List<Widget>> Josun = [
    Josun_1,
    Josun_2,
    Josun_3,
  ];

  late List<List<Widget>> Fairytale = [
    Fairytale_1,
    Fairytale_2,
    Fairytale_3,
  ];
  List<Widget> Fairytale_1 = [
    CardDeckButton3(
        '10', '샘이 나서 콩쥐에게 말도 안 되는 심부름을 시키지만, 옆에서 가장 많이 챙겨줬을 것 같은 팥쥐상'),
    CardDeckButton3('9', '아기돼지가 스스로 문을 열고 나올 때까지 잠복할 것 같은 늑대상'),
    CardDeckButton3('8', '아기돼지를 잡아먹으려다가 그새 친구가 되어 잡아먹지 못할 것 같은 늑대상'),
    CardDeckButton3('7', '자기 집에 깔린 마녀의 구두가 취향이 아니여서 그냥 자기 신발 신을 것 같은 도로시상'),
    CardDeckButton3('6', '마녀는 다 나쁘다며 착한 마녀까지 다 죽여버릴 것 같은 도로시상'),
    CardDeckButton3('5', '제비를 쫓아가 박씨를 물어오는 곳을 알아낼 것 같은 놀부상'),
    CardDeckButton3('4', '토끼의 간을 얻지 못하자 도망칠 것 같은 자라상'),
    CardDeckButton3('3', '진짜 자기 간을 내어주고 인생을 종결할 것 같은 토끼상'),
    CardDeckButton3('2', '양치기 소년이 거짓말을 할 때마다 가장 먼저 출동했을 것 같은 마을주민상'),
    CardDeckButton3('1', '늑대가 오지 않았을 때 양치기 소년을 골짜기로 불러 참교육시켰을 것 같은 마을주민상'),
  ];
  List<Widget> Fairytale_2 = [
    CardDeckButton3('10', '12시가 되면 변신이 풀린다는 것도 잊고 무도회를 즐길 것 같은 신데렐라상'),
    CardDeckButton3('9', '왕자의 여자가 될 수 있다는 유리구두를 신기 위해 어떻게든 발을 욱여넣을 것 같은 신데렐라상'),
    CardDeckButton3('8', '유리 구두 깨 먹어서 큰 값을 물어줄 것 같은 신데렐라상'),
    CardDeckButton3('7', '마녀를 의심하며 절대 사과를 받지 않을 것 같은 사람'),
    CardDeckButton3('6', '의심스러운 사과를 난쟁이에게 먼저 한 입 먹여볼 것 같은 백설공주상'),
    CardDeckButton3('5', '그걸 또 받아서 한 입 베어 물 것 같은 난쟁이상'),
    CardDeckButton3('4', '보물 앞에서 뭐부터 훔칠지 한참 고민하다 결국 건진 것 없이 잡힐 것 같은 알리바바상'),
    CardDeckButton3('3', '낮잠을 자서 경기에 졌지만, 낮잠이 너무 행복했다며 후회하지 않을 것 같은 토끼상'),
    CardDeckButton3('2', '경기에서 지고 있는데도 다리 아프다며 중간에 쉴 것 같은 거북이상'),
    CardDeckButton3('1', '목표 지점이 아닌 다른 곳을 향해 힘껏 달릴 것 같은 토끼상'),
  ];
  List<Widget> Fairytale_3 = [
    CardDeckButton3('10', '자신의 옷을 들고 찾아온 나무꾼을 변태라며 쫓아냈을 것 같은 선녀상'),
    CardDeckButton3('9', '선녀의 옷을 훔쳐서 당근마켓에 팔아버릴 것 같은 나무꾼상'),
    CardDeckButton3('8', '양탄자 타다가 신나서 굴러 떨어질 것 같은 알라딘의 원숭이상'),
    CardDeckButton3('7', '지니가 있는 주전자로 차를 내려먹을 것 같은 자스민상'),
    CardDeckButton3('6', '첫번째 소원으로 ‘소원권 무제한’을 말할 것 같은 알라딘상'),
    CardDeckButton3('5', '썩은 동아줄이라도 어떻게든 붙잡고 올라가 오누이를 잡았을 것 같은 호랑이상'),
    CardDeckButton3('4', '호랑이가 문을 두드리자마자 알아보고 재빨리 112에 신고했을 것 같은 오누이상'),
    CardDeckButton3('3', '부모님이 자신을 버리려 한다는 사실을 알자마자 집을 떠날 만반의 채비를 할 것 같은 헨젤상'),
    CardDeckButton3('2', '과자집이 수상하다며 절대 먹지 않을 것 같은 그레텔상'),
    CardDeckButton3('1', '매일 밥을 주는 마녀의 가짜 선의에 속아 결국 마녀에게 잡아먹히고 말 그레텔상'),
  ];
  List<Widget> Josun_1 = [
    CardDeckButton3('10', '왠지 모를 억울한 누명을 쓰고 유배당했을 것 같은 사람'),
    CardDeckButton3('9', '임금의 자리에 올랐으나 당파싸움에 휘말렸을 것 같은 사람'),
    CardDeckButton3('8', '돈으로 벼슬을 사서 탐관오리 행세를 했을 것 같은 사람'),
    CardDeckButton3('7', '방자가 되어 주인님 마당을 누구보다 깨끗하게 쓸었을 것 같은 사람'),
    CardDeckButton3('6', '암행어사가 되어 탐관오리를 혼쭐 내줬을 것 같은 사람'),
    CardDeckButton3('5', '인조와 함께 강화도로 도망쳤을 것 같은 사람'),
    CardDeckButton3('4', '오랫동안 불만을 품다가 결국엔 반역을 일으켰을 것 같은 사람'),
    CardDeckButton3('3', '전쟁터에서 죽은 척 누워있을 것 같은 사람'),
    CardDeckButton3('2', '춘향이의 그네 밀기에 소질 있었을 것 같은 향단이상'),
    CardDeckButton3('1', '조선의 잘 나가는 기생/기생오라비였을 것 같은 사람'),
  ];
  List<Widget> Josun_2 = [
    CardDeckButton3('10', '사랑하는 사람이랑 월담해서 도망갈 것 같은 사람'),
    CardDeckButton3('9', '주막에서 주모!를 가장 잘 외칠 것 같은 사람'),
    CardDeckButton3('8', '이순신 장군 돌아가셨을 때 가장 크게 울 것 같은 사람'),
    CardDeckButton3('7', '질 전쟁인 것이 눈에 보이면 미리 항복하고 아군의 계략을 다 알려줄 것 같은 사람'),
    CardDeckButton3('6', '반역을 일으켰으나 실패하여 옥에 갇혔을 것 같은 사람'),
    CardDeckButton3('5', '암행어사 출두요! 했을 때 혼자 찔려서 가장 먼저 도망갈 것 같은 사람'),
    CardDeckButton3('4', '동냥하는 거지한테 1냥 주려다가 모르고 100냥 줘서 다시 달라고 할 것 같은 사람'),
    CardDeckButton3('3', '남녀칠세부동석을 철석같이 지킬 것 같은 사람'),
    CardDeckButton3('2', '세종대왕이 한글 만든다고 했을 때 제일 툴툴거릴 것 같은 사람'),
    CardDeckButton3('1', '망나니가 천상 직업일 것 같은 사람'),
  ];

  List<Widget> Josun_3 = [
    CardDeckButton3('10', '금강산도 식후경이란 말을 처음으로 했을 것 같은 사람'),
    CardDeckButton3('9', '제비 다리 고쳐준다고 나서다가 남은 다리까지 부러뜨릴 것 같은 사람'),
    CardDeckButton3('8', '신분에 상관없이 누구든 친구 먹었을 것 같은 사람'),
    CardDeckButton3('7', '과거시험 3수 했을 것 같은 사람'),
    CardDeckButton3('6', '궁녀들이랑 종일 놀았을 것 같은 사람'),
    CardDeckButton3('5', '뭐만 하면 신분과 예의를 운운할 것 같은 사람'),
    CardDeckButton3('4', '짚신 만들기에 소질 있을 것 같은 사람'),
    CardDeckButton3('3', '맨날 서당에 지각해서 밖에서 손 들고 서있었을 것 같은 사람'),
    CardDeckButton3('2', '사약이 어떤 맛인지 궁금해서 맛보다가 그대로 생을 마감했을 것 같은 사람'),
    CardDeckButton3('1', '고문을 해야 하는데 너무 아파 보여서 살살 해줬을 것 같은 사람'),
  ];
  List<Widget> Alcohol_2_1 = [
    CardDeckButton3('10', '술 취하면 다른 사람들한테 시비 거는 줄로 오해받을 것 같은 사람'),
    CardDeckButton3('9', '친구 애인의 눈엣가시일 것 같은 사람'),
    CardDeckButton3('8', '길 가다가 누가 번호 물어보면 친구 번호 알려줄 것 같은 사람'),
    CardDeckButton3('7', '알바 예쁘다고/잘생겼다고 딩동 벨 눌러서 번호 달라고 할 것 같은 사람'),
    CardDeckButton3('6', '숨겨둔 자식이 있을 것 같은 사람'),
    CardDeckButton3('5', '전 애인이랑 갔던 곳에 현 애인 데려갈 것 같은 사람'),
    CardDeckButton3('4', '사랑해라고 절대 말 못 할 것 같은 사람'),
    CardDeckButton3('3', '엄청난 킹카/퀸카지만 정작 모쏠일 것 같은 사람'),
    CardDeckButton3('2', '나쁜 남자/여자일 것 같은 사람'),
    CardDeckButton3('1', '이상형에 가장 가까운 사람'),
  ];
  List<Widget> Alcohol_2_2 = [
    CardDeckButton3('10', '민증검사 프리패스상'),
    CardDeckButton3('9', '술 마시는 척하면서 바닥에 술 버릴 것 같은 사람'),
    CardDeckButton3('8', '헌팅 실패하고 돌아오면서 애써 괜찮은 척할 것 같은 사람'),
    CardDeckButton3('7', '과자 먹은 손으로 휴대폰 만질 것 같은 사람'),
    CardDeckButton3('6', '술 마시러 가자고 하면 \"여자/남자 있냐?\"부터 물어볼 것 같은 사람'),
    CardDeckButton3('5', '남/여사친만 사귀었다 하면 고백으로 혼내줘서 이성 친구 없을 것 같은 사람'),
    CardDeckButton3('4', '남/여사친만 사귀었다 하면 고백으로 혼나서 이성 친구 없을 것 같은 사람'),
    CardDeckButton3('3', '속을 제일 모르겠는 사람'),
    CardDeckButton3('2', '헤어지자고 하면 자살할 거라고 협박할 것 같은 사람'),
    CardDeckButton3('1', '지금 사귀자는 고백을 들으면 사귈 것 같은 사람')
  ];

  List<Widget> Alcohol_2_3 = [
    CardDeckButton3('10', '술 먹고 고백하고 다음 날 기억 못할 것 같은 사람'),
    CardDeckButton3('9', '안주로 황도 시켜 먹을 것 같은 사람'),
    CardDeckButton3('8', '안주로 황도 시켰다고 뭐라 하면서 가장 많이 먹을 것 같은 사람'),
    CardDeckButton3('7', '여기 모인 사람 중 누군가에게 고백받아봤을 것 같은 사람'),
    CardDeckButton3('6', '술값 15,200원 나오면 200원 빼고 보내줄 것 같은 사람'),
    CardDeckButton3('5', '결혼하면 잘 맞을 것 같은 사람'),
    CardDeckButton3('4', '술만 마시면 전 애인한테 전화할 것 같은 사람'),
    CardDeckButton3('3', '속도위반할 것 같은 사람'),
    CardDeckButton3('2', '취해서 지하철 탔다가 졸아서 결국 종점에서 택시 타고 집에 갈 것 같은 사람'),
    CardDeckButton3('1', '밤새 함께 있고 싶은 사람'),
  ];

  List<Widget> Alcohol_1_2 = [
    CardDeckButton3('10', '문만 잡아줘도 그 사람과의 결혼생활을 그릴 것 같은 사람'),
    CardDeckButton3('9', '다른 테이블에서 술 잘 얻어먹을 것 같은 사람'),
    CardDeckButton3('8', '다른 테이블에 남은 술 아깝다고 마실 것 같은 사람'),
    CardDeckButton3('7', '술부심 가장 강할 것 같은 사람'),
    CardDeckButton3('6', '동성이었다면 친한 친구가 됐을 것 같은 사람'),
    CardDeckButton3('5', '곰인 척하는 여우일 것 같은 사람'),
    CardDeckButton3('4', '여우 같지만 곰일 것 같은 사람'),
    CardDeckButton3('3', '안주만 먹다가 친구들이 뭐라고 해서 삐질 것 같은 사람'),
    CardDeckButton3('2', '상견례 통과율 0%일 것 같은 사람'),
    CardDeckButton3('1', '카라티 입을 때 옷깃 세워서 입을 것 같은 사람'),
  ];
  List<Widget> Alcohol_1_1 = [
    CardDeckButton3('10', '하트촛불 깔고 장미꽃 들고 노래 부르며 공개고백 해봤을 것 같은 사람'),
    CardDeckButton3('9', '이 공개고백을 받아봤을 것 같은 사람'),
    CardDeckButton3('8', '술 먹은 다음 날 가장 어색할 것 같은 사람'),
    CardDeckButton3('7', '이 중에 호감 가는 사람이 있을 것 같은 사람'),
    CardDeckButton3('6', '비밀연애하고 있을 것 같은 사람'),
    CardDeckButton3('5', '양다리의 전적이 있을 것만 같은 사람'),
    CardDeckButton3('4', '이성에게 인기가 많은데도 둔해서 잘 모를 것 같은 사람'),
    CardDeckButton3('3', '좋은 냄새가 날 것 같은 사람'),
    CardDeckButton3('2', '특이한 취향을 가지고 있을 것 같은 사람'),
    CardDeckButton3('1', '성별이 반대였다면 인기가 많을 것 같은 사람'),
  ];
  List<Widget> Alcohol_1_3 = [
    CardDeckButton3('10', '머리카락을 들추어보면 뒤통수에 땜빵이 있을 것 같은 사람'),
    CardDeckButton3('9', '하트시그널에 출연할 것 같은 사람'),
    CardDeckButton3('8', '애인 이빨에 고춧가루가 끼면 속으로 정떨어져하지만 말은 안 해줄 것 같은 사람'),
    CardDeckButton3('7', '술 먹고 택시에 지갑 잘 놔두고 내릴 것 같은 사람'),
    CardDeckButton3('6', '맞춤법 엉망일 것 같은 사람'),
    CardDeckButton3('5', '이성 앞에서 쑥맥일 것 같은 사람'),
    CardDeckButton3('4', '취하면 술값 계산 해줄 것 같은 사람'),
    CardDeckButton3('3', '어장크기가 아쿠아리움만 할 것 같은 사람'),
    CardDeckButton3('2', '한 때 어장의 물고기였을 것 같은 사람'),
    CardDeckButton3('1', '키스 장인일 것 같은 사람'),
  ];

  List<Widget> Love_1 = [
    CardDeckButton3('10', '툭하면 ’나 오늘 뭐 바뀐 거 없어?’라고 물어볼 것 같은 사람'),
    CardDeckButton3('9', '‘나 오늘 뭐 바뀐 거 없어?’라는 질문에 모범답안을 말할 것 같은 사람'),
    CardDeckButton3('8', '특별히 뭐 안 하는 것 같은데 이상하게 인기가 많을 것 같은 사람'),
    CardDeckButton3('7', '애인한테는 남들에게 보여주지 않는 모습을 보여줄 것 같은 사람'),
    CardDeckButton3('6', '상대가 먼저 고백하게 할 것 같은 사람'),
    CardDeckButton3('5', '연애하면 항상 더 좋아하고 퍼줄 것 같은 사람'),
    CardDeckButton3('4', '내가 좋아하는 사람보단 나를 좋아하는 사람과 연애할 것 같은 사람'),
    CardDeckButton3('3', '연락 잘 못 한다면서 인스타그램은 잘할 것 같은 사람'),
    CardDeckButton3('2', '질투 유발이나 헷갈리게 하는 행동을 절대 하지 않을 것 같은 사람'),
    CardDeckButton3('1', '22, 50일, 100일, 200일 숫자란 숫자는 다 챙길 것 같은 사람'),
  ];
  List<Widget> Love_2 = [
    CardDeckButton3('10', '이성을 보는 눈이 없을 것 같은 사람'),
    CardDeckButton3('9', '끼 부리는 사람보단 순진한 사람이 취향일 것 같은 사람'),
    CardDeckButton3('8', '10 주고 2 받아도 감동할 것 같은 사람'),
    CardDeckButton3('7', '전 애인이 사준 선물 안 버리고 계속 쓸 것 같은 사람'),
    CardDeckButton3('6', '5년 만난 연인이 있었을 것 같은 사람'),
    CardDeckButton3('5', '먼저 다가가는 것이 편할 것 같은 사람'),
    CardDeckButton3('4', '오글거리는 멘트 눈빛 하나 안 흔들리고 잘 말할 것 같은 사람'),
    CardDeckButton3('3', '재미없는 개그에도 제일 열심히 웃어줄 것 같은 사람'),
    CardDeckButton3('2', '영화 속에 나온 유명한 고백씬들을 한 번쯤 따라 고백해봤을 것 같은 사람'),
    CardDeckButton3('1', '자식이 생기면 카톡 프사를 자식 사진으로 바꿀 것 같은 사람'),
  ];

  List<Widget> Love_3 = [
    CardDeckButton3('10', '더치페이 절대 안 해! 자기가 다 낼 것 같은 사람'),
    CardDeckButton3('9', '남들한테 애인 주접 떨 것 같은 사람'),
    CardDeckButton3('8', '콩깍지가 제일 두꺼울 것 같은 사람'),
    CardDeckButton3('7', '장거리 연애 시 하루에 두 시간씩 통화할 것 같은 사람'),
    CardDeckButton3('6', '잠수 이별할 것 같은 사람'),
    CardDeckButton3('5', '카톡하면 자기 말만 하고 답장은 한참 있다가 할 것 같은 사람'),
    CardDeckButton3('4', '럽스타그램 할 것 같은 사람'),
    CardDeckButton3('3', '애인 생일마다 명품 선물해줄 것 같은 사람'),
    CardDeckButton3('2', '늘 연애에 진심이지만 그다지 오래가진 않을 것 같은 사람'),
    CardDeckButton3('1', '모태솔로인 사실을 숨기고 있을 것 같은 사람'),
  ];

  List<Widget> University_1 = [
    CardDeckButton3(
        '10', '원하던 대학교에 추가 합격했지만, 모르는 전화는 받지 않아 그 사실을 아직도 모르고 있을 것 같은 사람'),
    CardDeckButton3('9', '학식 받으면서 리필되냐고 물어볼 것 같은 사람'),
    CardDeckButton3('8', '전공수업 결석/조퇴를 밥 먹듯이 할 것 같은 사람'),
    CardDeckButton3('7', 'CC를 꿈꾸며 고백했다가 친한 사이로 남자고 해서 MT 안 나올 것 같은 사람'),
    CardDeckButton3('6', '수강신청 날 늦잠 자지만 엄청난 운빨로 최고의 시간표를 완성할 것 같은 사람'),
    CardDeckButton3('5', '피피티 만들 때 정렬 안 맞거나 글자 크기 안 맞으면 스트레스 받아서 다 고칠 것 같은 사람'),
    CardDeckButton3('4', '도서관 오픈 시간에 맞춰가서 마감 시간에 나올 것 같은 사람'),
    CardDeckButton3('3', '교수님 손잡고 대학원 갈 것 같은 사람'),
    CardDeckButton3('2', '종일 뒹굴뒹굴하면서 과제 하기 싫다고 할 것 같은 사람'),
    CardDeckButton3('1', '엄청 열심히 하고 B+받아도 만족해할 것 같은 사람'),
  ];
  List<Widget> University_2 = [
    CardDeckButton3('10', '길 가면 5명 중 한 명꼴로 아는 사람 마주쳐서 같이 다니기 힘든 사람'),
    CardDeckButton3('9', '동아리 부자일 것 같은 사람'),
    CardDeckButton3('8', '무임승차 했는데도 왠지 모르게 이름을 빼 버리기가 머뭇거려질 것 같은 사람'),
    CardDeckButton3('7', 'CC를 많이 해서 적이 많을 것 같은 사람'),
    CardDeckButton3('6', '도서관에서 음료수에 쪽지 많이 받아봤을 것 같은 사람'),
    CardDeckButton3('5', '교수님과 일주일에 한 번 이상 식사를 함께할 것 같은 사람'),
    CardDeckButton3('4', '피피티 템플릿만 2시간 고를 것 같은 사람'),
    CardDeckButton3('3', '안 그래도 바쁘면서 학생회에 나가 고생을 사서 할 것 같은 사람'),
    CardDeckButton3('2', '이 시대의 참된 과대상'),
    CardDeckButton3('1', '대학교 와서 새사람 됐을 것 같은 사람'),
  ];

  List<Widget> University_3 = [
    CardDeckButton3('10', '아침에 알람 6개 맞춰놨지만 결국 지각할 것 같은 사람'),
    CardDeckButton3('9', '조별과제할 때 함께하면 버스 태워줄 것 같은 사람'),
    CardDeckButton3('8', '동방 쓰고 싶어서 동아리 들어갔을 것 같은 사람'),
    CardDeckButton3('7', '술에 취하면 가장 추한 모습을 보일 것 같은 사람'),
    CardDeckButton3('6', '교수님 말씀이면 껌뻑 죽을 것 같은 사람'),
    CardDeckButton3('5', '같이 룸메 하면 없는 듯이 지내줄 것 같은 사람'),
    CardDeckButton3('4', '학식을 먹으면서도 맛있다고 할 것 같은 사람'),
    CardDeckButton3('3', '편의점 알바하면 노트북 가져가서 게임하고 있을 것 같은 사람'),
    CardDeckButton3('2', '취업 합격하기 전까진 절대 지원한 곳을 말해주지 않을 것 같은 사람'),
    CardDeckButton3('1', '시험 3일 전까지 놀다가 벼락치기 해놓고 시험 망쳤다며 징징거릴 것 같은 사람'),
  ];

  List<Widget> Break_It_1_1 = [
    CardDeckButton3('10', '‘13회 OO중학교 동창회 기념’ 같은 문구 적혀있는 수건 절대 안 쓸 것 같은 사람'),
    CardDeckButton3('9', '누가 부르는 데 에어팟 끼고 안 들리는 척할 것 같은 사람'),
    CardDeckButton3('8', '가게에서 나갈 때 꼭 감사합니다 인사할 것 같은 사람'),
    CardDeckButton3('7', '동창회에서 만났는데 몰라보게 달라졌을 것 같은 사람'),
    CardDeckButton3('6', '혼자서 유튜브 보며 낄낄거리다가 화면에 비친 자기 모습을 보고 현타올 것 같은 사람'),
    CardDeckButton3('5', '다이어트 때 대리만족 한답시고 먹방 보다가 새벽에 라면 끓여 먹을 것 같은 사람 '),
    CardDeckButton3('4', '고등학교 때 맞춘 반티 아직도 입고 다닐 것 같은 사람'),
    CardDeckButton3('3', '머릿 속 지식 절반의 출처가 나무위키일 것 같은 사람 '),
    CardDeckButton3('2', '클래식 들으면서 아메리카노 한 잔과 함께 아침을 시작할 것 같은 사람 '),
    CardDeckButton3('1', '샤워할 때 코인노래방인 것 마냥 눈물 쏟는 발라드 부를 것 같은 사람'),
  ];

//브레이-킷 1_2
  List<Widget> Break_It_1_2 = [
    CardDeckButton3('10', '좋아하는 연예인 생일 때 팬카페 열어서 직접 만든 굿즈 판매할 것 같은 사람'),
    CardDeckButton3('9', '화장실을 갔는데 거울에 손자국 있으면 거슬려서 꼭 닦고 나올 것 같은 사람'),
    CardDeckButton3('8', '감자 껍질 벗기다가 귀찮아서 그냥 요리에 사용할 것 같은 사람'),
    CardDeckButton3('7', '비가 왔는데 우산이 없어도 느긋하게 걸어갈 것 같은 사람'),
    CardDeckButton3('6', '씽씽이 타는데 보호장구 풀착장하고 탈 것 같은 사람'),
    CardDeckButton3('5', '방귀 뀌고 나 아닌데 할 것 같은 사람'),
    CardDeckButton3('4', '복권 당첨 문자가 와도 3일 후에 확인할 것 같은 사람'),
    CardDeckButton3('3', '샤워하며 생각 정리를 할 것 같은 사람'),
    CardDeckButton3('2', '마트에서 가격표도 안 보고 물건 담을 것 같은 사람'),
    CardDeckButton3('1', '버스에서 거스름돈을 200원 더 받아도 그냥 가져갈 것 같은 사람'),
  ];

//브레이-킷 1_3
  List<Widget> Break_It_1_3 = [
    CardDeckButton3('10', '땅바닥에 과자 떨어뜨리면 3초 안 됐다며 주워 먹을 것 같은 사람'),
    CardDeckButton3('9', '이 3초를 세줄 것 같은 사람'),
    CardDeckButton3('8', '3초 이미 지났다며 딴지 걸 것 같은 사람'),
    CardDeckButton3('7', '길 가다가 5만 원 주우면 주변을 살피고 자기 주머니 속에 넣을 것 같은 사람'),
    CardDeckButton3('6', '사람 많은 지하철에서 은근한 몸싸움을 할 것 같은 사람'),
    CardDeckButton3('5', '집에 건담로봇 조립해서 시리즈별로 전시해두었을 것 같은 사람'),
    CardDeckButton3('4', '전생에 돌멩이였을 것 같은 사람'),
    CardDeckButton3('3', '샴푸 브랜드에 민감할 것 같은 사람'),
    CardDeckButton3('2', '기사님이 문을 제때 열어주지 않으면 말없이 다음 정거장에 내릴 것 같은 사람'),
    CardDeckButton3('1', '온갖 혜택과 쿠폰을 알아 와서 영화를 반값에 볼 것 같은 사람'),
  ];

//브레이-킷 2_1
  List<Widget> Break_It_2_1 = [
    CardDeckButton3('10', '엄마 몰래 김치찌개에 있는 돼지고기만 건져 먹을 것 같은 사람'),
    CardDeckButton3('9', '여사친, 남사친 깻잎 떼줄 것 같은 사람'),
    CardDeckButton3('8', '길 가다가 번호 따여봤을 것 같은 사람'),
    CardDeckButton3('7', '학창 시절 두발 자유화 시위를 했을 것 같은 사람'),
    CardDeckButton3('6', '여사친/남사친한테 고백했다가 차여서 친구인 척 지내고 있을 것 같은 사람'),
    CardDeckButton3('5', '유튜브 시청 목록을 절대 공개하지 못할 것 같은 사람'),
    CardDeckButton3('4', '더치페이할 때 가장 돈을 늦게 보낼 것 같은 사람'),
    CardDeckButton3('3', '컴퓨터 타자 칠 때 손가락 두 개만 쓸 것 같은 사람'),
    CardDeckButton3('2', 'MBTI 맹신론자일 것 같은 사람'),
    CardDeckButton3('1', '장수해서 3세기를 살 것 같은 사람'),
  ];

//브레이-킷 2_2
  List<Widget> Break_It_2_2 = [
    CardDeckButton3('10', '랜덤게임하면 물 만난 물고기일 것 같은 사람'),
    CardDeckButton3('9', '한 때 유튜브 스트리머를 했지만 월 수익이 560원이었을 것 같은 사람'),
    CardDeckButton3('8', '학창시절 교복 반 체육복 반 스타일을 고수했을 것 같은 사람'),
    CardDeckButton3('7', '차가 없어도 초록 불이 될 때까지 기다렸다가 갈 것 같은 사람'),
    CardDeckButton3('6', '쌩쌩 지나치는 차 사이로 요리조리 무단횡단 할 것 같은 사람'),
    CardDeckButton3('5', '도를 아십니까를 따라가서 제사 지내고 올 것 같은 사람'),
    CardDeckButton3('4', '학창 시절 선도부였을 것 같은 사람'),
    CardDeckButton3('3', '결혼식에 친구가 바글바글할 것 같은 사람'),
    CardDeckButton3('2', '미국 하이틴 영화에서 악역의 왼쪽 자리에서 기강 잡았을 것 같은 사람'),
    CardDeckButton3('1', '정산할 때 소수점 자리까지 계산해서 돈 보내라고 할 것 같은 사람'),
  ];

//브레이-킷 2_3
  List<Widget> Break_It_2_3 = [
    CardDeckButton3('10', '문구점에서 온갖 불량식품을 다 먹어봤을 것 같은 사람'),
    CardDeckButton3('9', '학창 시절 인기 하나로 학생회장 당선됐을 것 같은 사람'),
    CardDeckButton3('8', '사이비 종교에 빠져 인생의 절반을 허비하고 말 것 같은 사람'),
    CardDeckButton3('7', '눈싸움하다가 얼굴에 눈 맞으면 바로 엄마 불렀을 것 같은 사람'),
    CardDeckButton3('6', '식당에서 음식물은 음식물끼리, 그릇은 그릇끼리 다 정리 해놓고 나갈 것 같은 사람'),
    CardDeckButton3('5', '함께 노래방을 가면 반전의 모습을 보여줄 것 같은 사람'),
    CardDeckButton3('4', '예능 프로그램 방청객 하면 누구보다 크게 웃어줄 것 같은 사람'),
    CardDeckButton3('3', '초등학교 시절 짝꿍한테 넘어오지 말라고 으름장을 놓았을 것 같은 사람'),
    CardDeckButton3('2', '중세 시대에 태어났더라면 왕가 귀족이었을 것 같은 사람'),
    CardDeckButton3('1', '이성보다 동성에게 더 인기 많았을 것 같은 사람'),
  ];

  List<Widget> setDeck(String cardCategory) {
    if (cardCategory == '브레이킷1' && deckIndex == 0) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷1' && deckIndex == 1) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷1' && deckIndex == 2) {
      return Break_It_1[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 0) {
      return Break_It_2[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 1) {
      return Break_It_2[deckIndex];
    } else if (cardCategory == '브레이킷2' && deckIndex == 1) {
      return Break_It_2[deckIndex];
    } else {
      return Break_It_1_1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B31),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new MyHome()),
                  );
                },
                child: Image.asset('assets/images/exitButton.png')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '차가운 분위기를 브레이킷 1탄 ',
                style: cafe24w700White(24, 36),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              CardEnd(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Center(
                    child: AppinioSwiper(
                      controller: controller,
                      cards: setDeck(cardCategory),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoButton(
                child: Image.asset('assets/images/unswipe.png'),
                onPressed: () => controller.unswipe(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CardEnd() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            SizedBox(
              width: 336,
              height: 520,
              child: Stack(
                children: [
                  Image.asset('assets/images/cardEnd.png'),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(25),
                        child: Text(
                          '게임종료',
                          textAlign: TextAlign.center,
                          style: cardEndText(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHome()),
                              );
                            },
                            child: Text(
                              '홈으로 돌아가기',
                              textAlign: TextAlign.center,
                              style: cardText(),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardDeckButton3(String index, String cardContent) {
  String cardPath = 'assets/images/card.png';

  return Container(
    child: Stack(
      children: [
        SizedBox(
          width: 336,
          height: 520,
          child: Stack(
            children: [
              Image.asset(cardPath),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Text(
                  '$index / 10장',
                  textAlign: TextAlign.center,
                  style: cardText(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40),
                child: Text(
                  cardContent,
                  textAlign: TextAlign.center,
                  style: cardText(),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
