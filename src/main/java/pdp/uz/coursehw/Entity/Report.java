package pdp.uz.coursehw.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Report {
    private String Course_Name;
    private int total_Students;
    private int total_Payments;
}
