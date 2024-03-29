
package acme.features.auditor.auditrecord;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditrecord.Auditrecord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuditrecordRepository extends AbstractRepository {

	@Query("select ar from Auditrecord ar where ar.id = ?1")
	Auditrecord findOneAuditrecordById(int id);

	@Query("select ar from Auditrecord ar where ar.auditor.id= ?1")
	Collection<Auditrecord> findManyByAuditrecordId(int auditorId);

	@Query("select ar from Auditrecord ar where ar.auditor.id = ?1 and ar.job.id = ?2 ")
	Collection<Auditrecord> findManyByJobIdAndAuditorId(int auditorId, int jobId);
}
