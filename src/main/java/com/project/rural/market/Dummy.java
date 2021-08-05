package com.project.rural.market;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import com.project.rural.DBUtil;

public class Dummy {

	public static void main(String[] args) {


		String[] id = {"hong","test","admin"};
		String[] subject = {"게시판 테스트입니다.",
							"HTML5 웹 프로그래밍 입문",
							"오라클로 배우는 데이터베이스 입문",
							"일은 배신하지 않는다.",
							"이전 단계로 돌아갈수 없다",
							"소프트웨어 공학에서 가장 오래된 가장 폭넓게",
							"시스템 일부 or 모형을 만드는 과정",
							"여러번의 SW개발과정을 거쳐 점진적으로 완벽한",
							"고객의 요구사항 변화에 유연하게 대처",
							"추후 구현단계에서 사용될 골격 코드가 된다.",
							"모형 적용경험과 성공사례",
							"소프트웨어에 대한 견본품을 만들어 ",
							"결과물에 대한 고객의 평가와 요구를 적극 수용",
							"일정한 주기를 반복하면서 개발",
							"밖에 오늘 더 덥대요 집안에서 공부합시다.",
							"자 이제 제목 몇개 안남았음",
							"홍길동입니다. 공지사항이 있네요",
							"집합관계의 특수한 형태",
							"하나의 사물이 다른 사물에 비해 더 일반적인지?",
							"사물이 할 수 있거나 해야하는 기능"};
		String content = "내용입니다.";
		String tag = "n";

		Random rnd = new Random();

		Connection conn = null;
		PreparedStatement stat = null;

		try {


			String sql = "insert into tblMarket (seq, id, subject, content, regdate, readcount, tag, thread, depth)"
					+ "values(seqBoard.nextVal, ?, ?, ?, default, default, ?, ? ,?)";

			conn = DBUtil.open();
			stat = conn.prepareStatement(sql);

			int thread = 9000;


			for(int i=0; i<50; i++) {

				thread += 1000;


				stat.setString(1, id[rnd.nextInt(id.length)]);
				stat.setString(2, subject[rnd.nextInt(subject.length)]);
				stat.setString(3, content);
				stat.setString(4, tag);
				stat.setInt(5, thread);
				stat.setInt(6, 0);

				stat.executeUpdate();

				System.out.println(i + "번째 게시물 작성완료");
			}
			stat.close();
			conn.close();


		} catch (Exception e) {
			System.out.println("Dummy.main()");
			e.printStackTrace();
		}
	}

}
