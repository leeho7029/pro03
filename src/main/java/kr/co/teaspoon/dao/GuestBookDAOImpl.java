package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.GuestBook;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Repository
public class GuestBookDAOImpl implements GuestBookDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void writeArticle(GuestBook guestBookDto) throws Exception {
        sqlSession.insert("guestbook.writeArticle", guestBookDto);
    }

    @Override
    public void fileRegister(GuestBook guestBookDto) throws Exception {
        sqlSession.insert("guestbook.fileRegister", guestBookDto);
    }

    @Override
    public List<GuestBook> fileList() throws Exception {
        return sqlSession.selectList("guestbook.guestbookList");
    }

    @Override
    public GuestBook fileDetail(int articleno) throws Exception {
        return sqlSession.selectOne("guestbook.guestbookDetail", articleno);
    }

    @Override
    public void guestbookDelete(int articleno) throws Exception {
        sqlSession.delete("guestbook.guestbookDelete", articleno);
    }

    @Override
    public void guestbookEdit(GuestBook dto) throws Exception {
        sqlSession.update("guestbook.guestbookEdit",dto );
    }

}
