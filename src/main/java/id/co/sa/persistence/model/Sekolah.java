package id.co.sa.persistence.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import java.time.ZonedDateTime;


@Entity
public class Sekolah {
		
	 	 @Id
		 @GeneratedValue(strategy = GenerationType.AUTO)
		 private Long idSekolah;
	 	 @Column(name = "namaSekolah", nullable = false)
	 	 private String namaSekolah;
		 
	 	 private String alamatSekolah;
		 
		 private String kepalaSekolah;
//		    
//		    @Column(name = "creation_time", nullable = false)
//		    @Type(type = "org.jadira.usertype.dateandtime.threeten.PersistentZonedDateTime")
//		    private ZonedDateTime creationTime;
		    
		    
			public Long getIdSekolah() {
				return idSekolah;
			}
			public void setIdSekolah(Long idSekolah) {
				this.idSekolah = idSekolah;
			}
			public String getNamaSekolah() {
				return namaSekolah;
			}
			public void setNamaSekolah(String namaSekolah) {
				this.namaSekolah = namaSekolah;
			}
			public String getAlamatSekolah() {
				return alamatSekolah;
			}
			public void setAlamatSekolah(String alamatSekolah) {
				this.alamatSekolah = alamatSekolah;
			}
			public String getKepalaSekolah() {
				return kepalaSekolah;
			}
			public void setKepalaSekolah(String kepalaSekolah) {
				this.kepalaSekolah = kepalaSekolah;
			}
			
			@Override
			public String toString() {
				return "Sekolah [idSekolah=" + idSekolah + ", namaSekolah="
						+ namaSekolah + ", alamatSekolah=" + alamatSekolah
						+ ", kepalaSekolah=" + kepalaSekolah + "]";
			}
			@Override
			public int hashCode() {
				final int prime = 31;
				int result = 1;
				result = prime
						* result
						+ ((alamatSekolah == null) ? 0 : alamatSekolah
								.hashCode());
				result = prime * result
						+ ((idSekolah == null) ? 0 : idSekolah.hashCode());
				result = prime
						* result
						+ ((kepalaSekolah == null) ? 0 : kepalaSekolah
								.hashCode());
				result = prime * result
						+ ((namaSekolah == null) ? 0 : namaSekolah.hashCode());
				return result;
			}
			
			@Override
			public boolean equals(Object obj) {
				if (this == obj)
					return true;
				if (obj == null)
					return false;
				if (getClass() != obj.getClass())
					return false;
				Sekolah other = (Sekolah) obj;
				if (alamatSekolah == null) {
					if (other.alamatSekolah != null)
						return false;
				} else if (!alamatSekolah.equals(other.alamatSekolah))
					return false;
				if (idSekolah == null) {
					if (other.idSekolah != null)
						return false;
				} else if (!idSekolah.equals(other.idSekolah))
					return false;
				if (kepalaSekolah == null) {
					if (other.kepalaSekolah != null)
						return false;
				} else if (!kepalaSekolah.equals(other.kepalaSekolah))
					return false;
				if (namaSekolah == null) {
					if (other.namaSekolah != null)
						return false;
				} else if (!namaSekolah.equals(other.namaSekolah))
					return false;
				return true;
			}

	 
}
