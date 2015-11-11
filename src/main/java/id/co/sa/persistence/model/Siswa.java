package id.co.sa.persistence.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Siswa {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	    private Long idSiswa;
	    private String nama;
	    private int no_nis;
	    private int kelamin;
 
	    //TODO Keterangan Siswa Lainnya
	    
		public Long getIdSiswa() {
			return idSiswa;
		}
		public void setIdSiswa(Long idSiswa) {
			this.idSiswa = idSiswa;
		}
		public String getNama() {
			return nama;
		}
		public void setNama(String nama) {
			this.nama = nama;
		}
		
		public int getNo_nis() {
			return no_nis;
		}
		public void setNo_nis(int no_nis) {
			this.no_nis = no_nis;
		}
		public int getKelamin() {
			return kelamin;
		}
		public void setKelamin(int kelamin) {
			this.kelamin = kelamin;
		}
	    
	    

}
