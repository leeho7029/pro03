package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.GuestBook;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GuestBookDAO {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
    public void fileRegister(GuestBook guestBookDto) throws Exception;
    public List<GuestBook> fileList() throws Exception;
    public GuestBook fileDetail(int articleno) throws Exception;

    public void guestbookDelete(int articleno) throws Exception;
    public void guestbookEdit(GuestBook dto) throws Exception;


}
