# Some basic concepts



### Basic reproduction number $R_0$

- in a homogeneous pop: the number of suceptibles an exposed/infected infects in a population of (almost) only susceptibles

- in a structured population: the maximum eigenvalue of the **next generation matrix** $M$ 

  - The $(j,k)$ entry of $M$ is the expected num of type $k$ people infected by type $j$ people early in epidemic

  $$
  M_{jk} = n_{k} \times\left(\alpha a_{j k} / n\right) \times(1 / \mu)=\pi_{k} \alpha a_{j k} / \mu
  $$

  - $1/\mu$ is expected duration of infectiousness

Let  $s(t) = S(t)/N$ be the proportion of susceptibles

The **final size** $s(\infty$ ) of an epidemic solves (Kermack and McKendrick)
$$
s(\infty) = \exp(R_0(s(\infty)-1))
$$
Can be calculated as **extinction probability** of the backward branching process associated with SIR system

- how BBT calculate fractions infected for each age-activity group



# Basic computational process

- Pick an $R_0$ (like 2.5)
- Multiply $M$ by a $\lambda_0$ so that $R_0$ is it's max eigenvalue
- Root find another $\lambda$ such that the final fractions $\tau_j$ of infections in age-activity groups give a "post-lockdown" $R_0=1$ after "running" SIR with $\lambda*\lambda_0*M$
  - This means finding $\lambda$ that makes 1 the max eigenvalue of $\lambda_0*M*(I-\text{diag}(\tau))$
- The herd immunity $h_D$ is then $\tau \pi^T$

Note: finding $\tau$ via backward branching process is a non-linear optimization problem and requires optimization toolbox install in MATLAB

Note: this is not time dependent... just solving in terms of steady states

# Problems?

- proportionality of NPIs across groups

