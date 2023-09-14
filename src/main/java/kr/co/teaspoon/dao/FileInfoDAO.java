package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;

public interface FileInfoDAO {
    public FileInfo fileInfoDetail(int articleno) throws Exception;
}
