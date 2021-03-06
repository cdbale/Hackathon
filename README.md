# Global Legal Hackathon
## Location-Based Data Privacy Solution

May 22, 2020

<br>

### Project Contacts

* Matthew Schneider
    Assistant Professor of Statistics
    LeBow College of Business at Drexel University
    [mjs624@drexel.edu](mjs624@drexel.edu)

* Jordan L. Fischer, Esq.
    Teaching Professor of Law
    Thomas R. Kline School of Law at Drexel University
    [jlf324@drexel.edu](jlf324@drexel.edu)

* Cameron Bale
    PhD Student in Business Analytics
    LeBow College of Business at Drexel University
    [cdb327@drexel.edu](cdb327@drexel.edu)

### Location-Based Data Privacy Solution

This Project addresses the trade-off between the accuracy of location data with legal privacy protections.

Prior research [12] shows that four (4) spatio-temporal points are enough to uniquely identify 95% of individuals. This means that the assortment of COVID-19 location-tracking apps are destined to identify some individuals. Privacy concerns are further exacerbated when geospatial points can be traced to home addresses which are linked to public tax and real estate sale records. 

### Project Goals

For the purpose of this FT Global Legal Hackathon, this project addresses the following core components: 

* Matching legally defined terms to the use cases and statistical metrics of location data. 

* Statistical process to reduce the identifiability of individuals while maintaining most of the usefulness of the data.

### Proposed Solution

We propose a relatively simple location data protection method called **location coarsening**. This method involves rounding observed latitude and longitude values, which are the measurements commonly used to define geospatial points, to meet the requirements of both *anonymization* and *aggregation*, both of which will be defined shortly.

Location coarsening reduces the identifiability of individuals in two ways:

* Reduces location uniqueness by rounding different individuals' location measurements to identical values; and
* Alters individuals' original locations by a distance that is directly controllable by the amount of rounding applied.

For example, an individual *i* is observed at location `37.59256, 127.0170` at time *t*. If we elect to round observed location measurements to three decimal places, individual *i* would now be observed at location `37.593, 127.017` at time *t*. The difference between individual *i*'s original location at time *t* and their new location is 49.1 meters. In addition, individual *i* may now be observed at the same location at time *t* as some other individual(s) in the data since individual *i*'s location is now more general.

Using data on COVID-19 patient locations over time, we calculate the percentage of individuals who have a unique location trajectory as well as the distance that individuals' observed locations are shifted when rounding to different numbers of decimals. The table below shows the median amount that an individual observed location is shifted when location is rounded to the corresponding number of decimals. Below that is the median percentage individual trajectories that are unique at the corresponding number of decimals. As the percentage of unique trajectories decreases and the distance between original observed location and coarsened location increases, the usefulness of the data also decreases because location measurements become very general and far from their original values.


|                             | 5 decimals | 4 decimals | 3 decimals | 2 decimals | 1 decimal | 0 decimals |
|-----------------------------|:----------:|:----------:|:----------:|:----------:|:---------:|:----------:|
| Median Distance Shifted (m) |      0     |    2.74    |    40.45   |   390.16   |  3,989.03 |  46,553.73 |
| Median % Unique Trajectories|    99.35   |   99.25    |    99.25   |    97.38   |    62.06  |    19.07   |


Our proposed solution will be most useful and applicable in use cases where the desired specificity of location is known. We highlight some of these cases in the **Statistical Metrics** section of this document.

### Project Assumptions & Out of Scope Matters

Due to the shortened timeline of this project, our team made a number of assumptions and selected to only address a sub-set of the issues related to the trade-off between data location and privacy.

1. Varying Legally Defined Terms 

The key terms used in this project (see below) have a variety of different definitions. These definitions are provided from different resources and stakeholders: legislatures crafting regulation, courts in their legal decisions, standards committees who provide varying frameworks, etc. Our project focuses instead on core privacy principles in the spirit of these definitions and created standard definitions from a variety of sources for the purposes of the limited scope of this analysis. However, we recognize that these terms are arguably nuanced. As such, in future work, we will look to further explore these various definitions.

2. Technological Solution

We focused on one technological solution for location apps that use Global Positioning System (GPS) data. We explored the tradeoff between the accuracy of location data and privacy for COVID-19 persons in South Korea only. This data is relatively sparse (only about 1000 individuals) which means that the likelihood of an individual having at least one point in their location trajectory that is different from all other individuals is very high. We also did not incorporate the time an individual was observed in a given location. However, we expect that when considering a much larger dataset as well as the time component, the proportion of unique trajectories would remain approximately the same. Overall, the tradeoff between accuracy and privacy will need to be a constant consideration. In the future, we will apply our solution to data of varying sizes from other countries. We also propose conceptual solutions for statistical metrics that use Bluetooth data. 

### Legal Framework with Related Statistical Analysis 

The use of location data as a solution to address the spread of COVID-19 directly impacts interrelated but distinctly different terms under privacy law: 

* Pseudonymization;
* De-identification;
* Anonymization; and
* Aggregation.

These terms are similar and often used interchangeably. The terms generally address the core idea of removing identifiers from data. However, with regulations and standards, each term can be defined and used distinctinly differentlly. This creates regional challenges to create uniform, global solutions (in the form of applications, etc.) since each law can restrict the way in which the technology is required to remove the identifying information.

As such, our proposal presents four (4) different use metrics and identifies the corresponding legal terms that could apply to those use metrics.  For each of these terms, we identify the relevant privacy strength (low, medium, high).  For each metric, we propose technological solutions to increase privacy at a minimal tradeoff to accuracy.

#### Pseudonymization

* Privacy Strength: <b>LOW</b>

The term pseudonymization is most relevant within the European Union under the General Data Protection Regulation ("GDPR"). [1] The GDPR defines pseudonymization as: 

> the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational measures to ensure that the personal data are not attributed to an identified or identifiable natural person [Art. 4(5)].

Two key factors are inherent in this definition: (1) attribution and (2) additional information. Based on this defintion, it appears that so long as the "additional information" that can be use to identify the information is removed and separated from the non-identifer information, the data converts from personal data to data that does not fall under the GDPR.

Based on this, our project generated the following generalized defintion for pseudonymization:

> the processing of personal information in a manner that renders the personal information no longer attributable to a specific consumer without the use of additional information.

#### De-Identification

* Privacy Strength: <b>MEDIUM</b>

The term de-identification is used within US-based cybersecurity and data privacy concepts. The National Institutes of Standards and Technology ("NIST") relies on this concept for removing identifiers from personal information, defining de-identification as:

> general term for any process of removing the association between a set of identifying data and the data subject [2].

By removing this association between the identifier and the information, information becomes de-identified, thereby reducing certian privacy concerns. Additional uses of the term "de-idenfitication" can be found in the Health Insurance Portability and Accountability Act (HIPAA) and the California Consumer Privacy Act of 2018.

One outstanding question under de-identification is how to address the situation where identifying information can relate to two or more people. The defintion above appears to only address identifying information related to one individual. As such, this term may not be viewed as strong since it limits the privacy restrictions to only removing the single identifiers but leaves open the possibility of using identifying information if its relates to more than one individual.

Based on these sources, our project generated the following generalized definition for "de-identification":

> Information that cannot reasonably identify, relate to, describe, be capable of being associated with, or be linked, directly or indirectly, to a particular individual.

#### Anonymization

* Privacy Strength: <b>MEDIUM</b>

The concept of annonymization is used across a variety of different legal frameworks and regions. For example, NIST defines this term as:

> the process that removes the association between the identifying dataset and the data subject [2]. 

Further, while the term anonymization is not defined within the GDPR, it is used by the European Data Protection Board ("EDPB") in further explaining the impact of the GDPR within the context of geolocation tracking. [3] The Guidelines state that

> Anonymisation refers to the use of a set of techniques in order to remove the ability to link the data with an identified or identifiable natural person against any “reasonable” effort. This “reasonability test” must take into account both objective aspects (time, technical means) and contextual elements that may vary case by case (rarity of a phenomenon including population density, nature and volume of data). If the data fails to pass this test, then it has not been anonymised and therefore remains in the scope of the GDPR. ¶ 15

Futher, these Guidelines outline three factors to determine the "robustness of anonymization": 

> (i) singling-out (isolating an individual in a larger group based on the data); (ii) linkability (linking together two records concerning the same individual); and (iii) inference (deducing, with significant probability, unknown information about an individual). ¶ 16

This defintion presents a challenge to truly remove the identifier, especially since statitical inferences can diminish privacy when using anonymization techniques. One solution, to be addressed in future work, is to employ differential privacy to provide heightend privacy in the anonymization process. 

Based on this guidance, our project generated the following generalized defintion for "anonymization":

> A process that removes the association between the identifying dataset and the data subject.

#### Aggregation

* Privacy Strength: <b>HIGH</b>

The concept of aggregated data bridges both the anonymity of information and the amount of information collected. In essence, it is the combination of volume plus anonymity that allows aggregated data to be less prone to privacy concerns. The CCPA directly recognizes the concept of aggregation as follows:

> information that relates to a group or category of consumers, from which individual consumer identities have been removed, that is not linked or reasonably linkable to any consumer or household, including via a device. “Aggregate consumer information” does not mean one or more individual consumer records that have been de­identified. [4]

Additionally, the GDPR does recognize the concept of statistical research in Recital 162, stating:

> Statistical purposes mean any operation of collection and the processing of personal data necessary for statistical surveys or for the production of statistical results. Those statistical results may further be used for different purposes, including a scientific research purpose. The statistical purpose implies that the result of processing for statistical purposes is not personal data, but aggregate data, and that this result or the personal data are not used in support of measures or decisions regarding any particular natural person.

Some research does suggest that aggregated data can be not private, but this is highly unusual. By employing differential privacy, these rare instances of diminished privacy in aggregated data can be minimized (a concept to be explored in future work).

It is important to note that aggregation depends on the number of individuals collected within a category or group. In future work, the amount of data to be summed or added to determine a group size will be explored further. [5] 

Based on these resources, our project generated the following generalized definition of "aggregation":

> Information that relates to a group or category of individuals, from which individual identities have been removed, that is not linked or reasonably linkable to any individual.

### Statistical Metrics

Globally, location-based apps for COVID-19 use different metrics and dashboards to analyze GPS and Bluetooth data. Metrics are inconsistent due to regional differences in privacy regulations (see [10] and [11]) and preferences from app developers; however, the underlying usefulness of the location data can be described with four (4) basic statistical metrics.   

For clarity, we present all metrics using GPS coordinates (latitute and longitude) which can transformed to geospatial distances to each other (i.e., a distance matrix). Many apps also use Bluetooth data which limits some of the usefulness of the location data, but has an analagous transformation to distance (i.e., a small distance is required for a Bluetooth connection). For example, Metric 1 can be replicated by using Bluetooth receivers at specific locations which correspond to specific GPS coordinates. 

#### Metric 1 (Location Risk)
The number of COVID-19 persons at specific location k on day t

Legal Term: Aggregation and De-Identification

![](images/metric1.png)


For example: 

	> There were 3 (Threat) COVID-19 persons in Washington Square Park (k) on Tuesday (t).
    
	> There were 0 (Threat) COVID-19 persons in South Street Grocery (k) on Wednesday (t).
    
Goal: To provide information to the public for their past risk on all days (t) and all locations (k). 

Examples: 
* South Korea

Privacy Solution: 
* Location coarsening with expanded geofence: perform location coarsening to the extent that most observed locations have been significantly shifted, where the maximum shifted distance constitutes a reasonable distance to expand the geofence radius. For example, round all observed locations such that any given location point is shifted by at least 50 meters, but no more than 75 meters. Then, expand the radius of any geofence of interest by 75 meters.

#### Metric 2 (Neighborhood Risk)
The number of COVID-19 persons visiting neighborhood k on day t

Legal Term: Aggregation

![](/images/metric2.png)

For example: 

	> 1% (Prevalence) of the residents in Graduate Hospital (k) on Tuesday (t) had COVID-19.
    
	> 0.5% (Prevalence) of the residents in Philadelphia (k) on Wednesday (t) had COVID-19.

Goal: Public health indicators for all days (t) and all neighborhoods (k). 

Examples: 
* South Korea

Privacy Solution: 
* Location coarsening with expanded neighborhood boundary: perform location coarsening to the extent that most observed locations have been significantly shifted, where the maximum shifted distance constitutes a reasonable distance to expand the neighborhood radius. For example, round all observed locations such that any given location point is shifted by at least 75 meters, but no more than 100 meters. Then, expand the boundary of any neighborhood of interest by 100 meters.
* Theoretical-based privacy protection: Differential privacy-based histogram with noise infusion based on [8].  For example,  add a random number to the the number of COVID-19 cases in the numerator of Metric 2 before releasing the statistic to the public. This solution is important because it is also effective on neighborhoods with no COVID-19 cases (i.e., this is a sparse data method).  Differential privacy ensures that additional insights about any person is not greatly altered whether they are in the data set or not.


#### Metric 3 (Contact Tracing)
Did person i have contact with person j at any time y within distance d ?

Legal Term: Anonymization and Pseudonymisation

![](images/metric3.png)

For example: 

	> Bob (i) was within 6 feet (d) of Jane (j) at 11:15:20 AM on May 2, 2020 (t).
	> Bob (i) was within 6 feet (d) of John (j) at 11:25:45 AM on May 7, 2020 (t).
	> Jane (i) was within 6 feet (d) of Matt (j) at 1:47:23 AM on May 9, 2020 (t).
	> A social network is established: Bob is now connected to both Jane and John in the 1st degree. Bob is connected with Matt in the 2nd degree. 
	> Bob (i) was diagnosed with COVID-19.  Jane and John are notified.   

Goal: To contact all persons for testing that are 1st degree (or 2nd degree) with a COVID-19 person.

Examples: 
* South Korea 
* Israel 
* Singapore
* Many others using either Bluetooth or GPS (see [10] and [11])

Privacy Solution: 
* Fundamental privacy issues: [6] and [9] discuss fundamental privacy issues with using network data with additional identifiers and/or information. Network data is not very private.
* Privacy-preserving network:  Release a privacy-preserving graph degree sequence based on the scientific methodology of [7]. For example, the graph degree of Bob in the above example is 2 because Bob connects to Jane and John.  This number would have to be altered to protect the privacy of the entire network. 

#### Metric 4 (Quarantine Commpliance)
Did person i leave location k at any time t?

Legal Term: None (non-existent)

![](./images/metric4.png)

For example: 

	> Bob (i) left his apartment at 11:15:20 AM on May 2, 2020 (t) and has violated his quarantine.

Goal: To quarantine a person within a specific location

Examples: 
* Hong Kong for COVID-19 persons and newly arrived visitors 
* Poland for 14 days

Privacy Solution: 
* Access Control - governmental authority uses increased data security measures to restrict access to the data

### Conclusion

The recent proliferation of COVID-19 tracking applications leads to a high probability that individuals, as well as sensitive information about them, may be indentified from their location data.

In our integration of legal frameworks and statistical methods, we have chosen core privacy principles in the spirit of many legal definitions and created standardized definitions from a variety of sources for the purposes of the limited scope of this analysis. We have proposed a statistical solution, location coarsening, that can increase the privacy of individuals' location data while maintaining most of the usefulness of the data for two metrics relevant to COVID-19 tracking applications: neighborhood risk and location risk. Using location coarsening in these applications achieves the requirements outlined in the legal definitions of aggregation and de-identification.

We have also proposed conceptual solutions to the problem of balancing the usefulness of location data for metrics relevant to COVID-19 tracking applications with the privacy of location data defined under various legal frameworks. These metrics are neighborhood risk, contact tracing, and quarantine compliance. All proposed conceptual solutions increase privacy at a minimal tradeoff to accuracy while meeting various legal privacy definitions of varying strengths: aggregation (high), anonymization (medium), and pseudonymisation (low).

The legal frameworks we have defined and the solutions we have proposed have laid a foundation for future work in integrating legal and statistical approaches to data privacy. The integration of statistical methods and legal frameworks is essential to ensuring individuals are provided adequate privacy under the law while preserving the usefulness of their data.

### Repository for Tools and Documents for Hackathon Project

We have provided all [code](https://github.com/cdbale/Hackathon/blob/master/Code/korean_trajectories_analysis.md) and [data](https://github.com/cdbale/Hackathon/tree/master/Data) used in our calculations and our proposed solution in the `Code` and `Data` folders of this repository.

### Future Work

Through this initial project, our team identified the following areas for future work to continue to build out effective solutions to balance the accuracy of location-data and privacy concerns:

1. Identifying the Privacy Risks 

2. Further define key legal terms & factors with corresponding statistical analysis

3. Differentially private histogram approach for geospatial data which provides a theoretical guarantee to individual privacy

### Contact Us

If you are interested in this work, or want to work with us, please reach out:

* Matthew Schneider, [mjs624@drexel.edu](mjs624@drexel.edu)

* Jordan L. Fischer, Esq., [jlf324@drexel.edu](jlf324@drexel.edu)

* Cameron Bale, [cdb327@drexel.edu](cdb327@drexel.edu)

### Appendices 

[1] Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC.

[2] NIST Special Publication 800-53 (Rev. 4).

[3] European Data Protection Board Guidelines 04/2020 onthe use of location data and contact tracing tools in the context of the COVID-19 outbreak, 2020.04.21.

[4] The California Consumer Privacy Act of 2018, Cal. Civ. Code § 1798.100, <em>et seq.</em>

[5] Harvey, S. J. (2013). Smart Meters, Smarter Regulation: Balancing Privacy and Innovation in the Electric Grid. UCLA L. Rev., 61, 2068.

[6] Fienberg, S. E. (2013). Is the Privacy of Network Data an Oxymoron?. Journal of Privacy and Confidentiality, 4(2).

[7] Karwa, V., & Slavković, A. B. (2012, September). Differentially private graphical degree sequences and synthetic graphs. In International Conference on Privacy in Statistical Databases (pp. 273-285). Springer, Berlin, Heidelberg.

[8] Li, B., Karwa, V., Slavković, A., & Steorts, R. C. (2018). A Privacy Preserving Algorithm to Release Sparse High-dimensional Histograms. Journal of Privacy and Confidentiality, 8(1).

[9] Stutzman, F. D., Gross, R., & Acquisti, A. (2013). Silent listeners: The evolution of privacy and disclosure on Facebook. Journal of privacy and confidentiality, 4(2), 2.

[10] Norton Rose Fulbright (2020). Contact tracing apps: A new world for data privacy. Accessed on May 17, 2020 from https://www.nortonrosefulbright.com/en/knowledge/publications/d7a9a296/contact-tracing-apps-a-new-world-for-data-privacy

[11] Tsang, Samantha (2020). Here are the contact tracing apps being deployed around the world. Accessed on May 20, 2020 from https://iapp.org/news/a/here-are-the-contact-tracing-apps-being-employed-around-the-world/

[12] De Montjoye, Y. A., Hidalgo, C. A., Verleysen, M., & Blondel, V. D. (2013). Unique in the crowd: The privacy bounds of human mobility. Scientific reports, 3, 1376.
