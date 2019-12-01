
package acme.features.auditor.auditrecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.auditrecord.Auditrecord;
import acme.entities.roles.Auditor;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractShowService;

@Service
public class AuditrecordShowService implements AbstractShowService<Auditor, Auditrecord> {

	@Autowired
	AuditrecordRepository repository;


	@Override
	public boolean authorise(final Request<Auditrecord> request) {

		/*
		 * boolean result;
		 *
		 * int auditrecordId;
		 * Auditrecord auditrecord;
		 * Job job;
		 * Principal principal;
		 *
		 * auditrecordId = request.getModel().getInteger("id");
		 * auditrecord = this.repository.findOneAuditrecordById(auditrecordId);
		 * job = auditrecord.getJob();
		 * principal = request.getPrincipal();
		 * result = job.i.isFinalMode() || !job.isFinalMode() && employer.getUserAccount().getId() == principal.getActiveRoleId();
		 * return result;
		 */
		assert request != null;

		return true;
	}

	@Override
	public Auditrecord findOne(final Request<Auditrecord> request) {

		assert request != null;

		Auditrecord result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneAuditrecordById(id);
		return result;

	}

	@Override
	public void unbind(final Request<Auditrecord> request, final Auditrecord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "reference", "title", "moment");
		request.unbind(entity, model, "status", "body");

	}
}
