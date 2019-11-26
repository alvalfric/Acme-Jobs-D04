
package acme.entities.job;

import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Duty {
	//Serialisation identifier ----------------------------------------

	private static final long	serialVersionUID	= 1L;

	//Attributes ------------------------------------------------------

	@NotBlank
	private String				title;

	@NotBlank
	private String				description;

	@NotNull
	@Range(min = (long) 0.0, max = (long) 100.0)
	private Double				percentage;
}
