package kr.co.teaspoon.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FileInfo {
    private int articleno;
    private String saveFolder;
    private String originFile;
    private String saveFile;
}
