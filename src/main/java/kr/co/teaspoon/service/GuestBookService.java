package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.GuestBook;

import java.util.List;

public interface GuestBookService {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
    public void fileRegister(GuestBook guestBookDto) throws Exception;
    public List<GuestBook> fileList() throws Exception;
    public GuestBook fileDetail(int articleno) throws Exception;

    public void guestbookDelete(int articleno) throws Exception;
    public void guestbookEdit(GuestBook dto) throws Exception;
}
