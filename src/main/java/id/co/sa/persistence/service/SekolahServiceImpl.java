package id.co.sa.persistence.service;

import id.co.sa.persistence.dao.SekolahRepository;
import id.co.sa.persistence.model.Sekolah;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SekolahServiceImpl implements SekolahService {
	
	@Resource
	private SekolahRepository sekolahRepository;

//	@Override
//	@Transactional
//	public Sekolah create(Sekolah sekolah) {
//		Sekolah createdSekolah = sekolah;
//		return sekolahRepository.save(createdSekolah);
//	}
	
//	@Override
//	@Transactional
//	public Sekolah findById(int id) {
//		return sekolahRepository.findOne(id);
//	}

//	@Override
//	@Transactional(rollbackFor=SekolahNotFound.class)
//	public Sekolah delete(int id) throws SekolahNotFound {
//		Sekolah deletedSekolah = sekolahRepository.findOne(id);
//		
//		if (deletedSekolah == null)
//			throw new SekolahNotFound();
//		
//		sekolahRepository.delete(deletedSekolah);
//		return deletedSekolah;
//	}

	@Override
	@Transactional
	public List<Sekolah> findAll() {
		return sekolahRepository.findAll();
	}

//	@Override
//	@Transactional(rollbackFor=SekolahNotFound.class)
//	public Sekolah update(Sekolah sekolah) throws SekolahNotFound {
//		Sekolah updatedSekolah = sekolahRepository.findOne(sekolah.getId());
//		
//		if (updatedSekolah == null)
//			throw new SekolahNotFound();
//		
//		updatedSekolah.setName(sekolah.getName());
//		updatedSekolah.setEmplNumber(sekolah.getEmplNumber());
//		return updatedSekolah;
//	}

}
