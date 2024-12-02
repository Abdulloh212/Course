package pdp.uz.coursehw.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class StudentsTotal {
    private int studentID;
    private String studentName;
    private Double totalPayment;
    private int group_Id;
}
