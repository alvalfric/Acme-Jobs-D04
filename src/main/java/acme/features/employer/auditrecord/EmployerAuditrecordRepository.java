
package acme.features.employer.auditrecord;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditrecord.Auditrecord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface EmployerAuditrecordRepository extends AbstractRepository {

	@Query("select j from Auditrecord j where j.id = ?1")
	Auditrecord findOneAuditrecordById(int id);

	@Query("select j from Auditrecord j where j.auditor.id= ?1 ")
	Collection<Auditrecord> findManyByAuditrecordId(int auditorId);

	@Query("select a from Auditrecord a where a.job.id= ?1 ")
	Collection<Auditrecord> findManyByJobId(int jobId);

}
