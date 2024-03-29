
package acme.features.employer.job;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditrecord.Auditrecord;
import acme.entities.jobs.Duty;
import acme.entities.jobs.Job;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface EmployerJobRepository extends AbstractRepository {

	@Query("select j from Job j where j.id = ?1")
	Job findOneJobById(int id);

	@Query("select j from Job j where j.employer.id = ?1")
	Collection<Job> findManyByEmployerId(int employerId);

	@Query("select j.descriptor.duties from Job j where j.id = ?1")
	Collection<Duty> findManyDutyByJobId(int jobId);

	@Query("select a from Auditrecord a where a.job.id = ?1")
	Collection<Auditrecord> findManyAuditorRecordByJobId(int jobId);
}
