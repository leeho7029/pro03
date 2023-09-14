package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileInfoDAOImpl implements FileInfoDAO {
    @Autowired
    private SqlSession sqlSession;
    @Override
    public FileInfo fileInfoDetail(int articleno) throws Exception {
        return sqlSession.selectOne("fileInfo.fileInfoDetail", articleno);
    }
}
