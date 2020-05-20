# Global Legal Hackathon

<br>

### Project Contacts

Matthew Schneider
    [INSERT]

Jordan L. Fischer, Esq.
    Teaching Professor of Law
    Thomas R. Kline School of Law at Drexel University
    [jlf324@drexel.edu](jlf324@drexel.edu)

Cameron Bale
    [INSERT]

### Location-Based Data Privacy Solution

This Project addresses the trade-off between the accuracy of location data with privacy and legal privacy protections.

Prior research (de Montjoye et al. 2013) shows that four spatio-temporal points are enough to uniquely identify 95% of individuals. This means that the assortment of COVID-19 location-tracking apps are destined to identify some individuals. Privacy concerns are further exacerbated when geospatial points can be traced to home addresses which are linked to public tax and real estate sale records.

### Project Goals

For the purpose of this FT Global Legal Hackathon, this project addresses the following core components: 

* Statistical process to reduce the identifiability of individuals while maintaining most of the usefulness of the data

* Differentially private histogram approach for geospatial data which provides a theoretical guarantee to individual privacy.

### Proposed Solution


#### Project Assumptions & Out of Scope Matters

Due to the shortened timeline of this project, our team made a number of assumptions and selected to only address a sub-set of the issues related to the trade-off between data location and privacy.

1. Varying Legally Defined Terms 

The key terms used in this project (see below) have a vareity of different defintions. Our project created standard defintions from those sources, but we recognize that these terms are arguablly nuanced. As such, in our Future Work, we will look to further explore these various defintions.

2. INSERT

### Legal Framework with Related Statistical Analysis 

The use of location data as solution to address the spread of COVID-19 directly impacts interrelated but distinctly different terms under privacy law: 

* Pseudonymization;
* De-identification;
* Anonymization; and
* Aggregation.

These terms are similar and often used interchangeably. The terms generally address the core idea of removing identifiers from data. However, with regulations and standards, each termcan be defined and used distinctinly differentlly. 

#### Pseudonymization

The term pseudonymization is most relevant within the European Union under the General Data Protection Regulation ("GDPR"). [1] The GDPR defines pseudonymization as: 

> the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational measures to ensure that the personal data are not attributed to an identified or identifiable natural person [Art. 4(5)].

Two key factors are inherent in this defition: (1) attribution and (2) additional information. Based on this defintion, it appears that so long as the "additional information" that can be use to identify the information is removed and separated from the non-identifer information, the data converts from personal data to data that does not fall under the GDPR.

Based on this, our project generated the following generalized defintion for pseudonymization:

> the processing of personal information in a manner that renders the personal information no longer attributable to a specific consumer without the use of additional information.

#### De-Identification

The term de-identification is used within US-based cybersecurity and data privacy concepts. The National Institutes of Standards and Technology ("NIST") relies on this concept for removing identifiers from personal information, defining de-identification as:

> general term for any process of removing the association between a set of identifying data and the data subject [2].

By removing this association between the identifier and the information, information becomes de-identified, thereby reducing certian privacy concerns. Additional uses of the term "de-idenfitication" can be found in the Health Insurance Portability and Accountability Act (HIPAA) and the California Consumer Privacy Act of 2018. 

Based on these sources, our project generated the following generalized definition for "de-identification":

> Information that cannot reasonably identify, relate to, describe, be capable of being associated with, or be linked, directly or indirectly, to a particular individual.

#### Anonymization

The concept of annonymization is used across a variety of different legal frameworks and regions. For example, NIST defines this term as:

> the process that removes the association between the identifying dataset and the data subject [2]. 

Further, while the term annonymization is not defined within the GDPR, it is used by the European Data Protection Board ("EDPB") in further explaining the impact of the GDPR within the context of geolocation tracking. [3] The Guidelines state that

> Anonymisation refers to the use of a set of techniques in order to remove the ability to link the data with an identified or identifiable natural person against any “reasonable” effort. This “reasonability test” must take into account both objective aspects (time, technical means) and contextual elements that may vary case by case (rarity of a phenomenon including population density, nature and volume of data). If the data fails to pass this test, then it has not been anonymised and therefore remains in the scope of the GDPR. ¶ 15

Futher, these Guidelines outline three factors to determine the "robustmenss of anonymization": 

> (i) singling-out (isolating an individual in a larger group based on the data); (ii) linkability (linking together two records concerning the same individual); and (iii) inference (deducing, with significant probability, unknown information about an individual). ¶ 16

Based on this guidance, our project generated the following generalized defintion for "anonymization":

> A process that removes the association between the identifying dataset and the data subject.

#### Aggregation

The concept of aggregated data bridges both the annonymity of information and the amount of information collected. In essence, it the combination of volume plus annonymity that allows aggregated data to be less prone to privacy concerns. The CCPA directly recognizes the concept of aggregation as follows:

> information that relates to a group or category of consumers, from which individual consumer identities have been removed, that is not linked or reasonably linkable to any consumer or household, including via a device. “Aggregate consumer information” does not mean one or more individual consumer records that have been de­identified. [4]

Additionally, the GDPR does recognize the concept of statistical research in Recital 162, stating:

> Statistical purposes mean any operation of collection and the processing of personal data necessary for statistical surveys or for the production of statistical results. Those statistical results may further be used for different purposes, including a scientific research purpose. The statistical purpose implies that the result of processing for statistical purposes is not personal data, but aggregate data, and that this result or the personal data are not used in support of measures or decisions regarding any particular natural person.

Based on these resources, our project generated the following generalized definition of "aggregation":

> Information that relates to a group or category of individuals, from which individual identities have been removed, that is not linked or reasonably linkable to any individual.

### Repository for Tools and Documents for Hackathon Project

### Future Work

Through this initial project, our team identified the following areas for future work to continue to build out effective solutions to balance the accuracy of location-data and privacy concerns:

1. Identifying the Privacy Risks 

2. Further define key legal terms & factors with corresponding statistical analysis

### Appendices 

[1] Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC.

[2] NIST Special Publication 800-53 (Rev. 4).

[3] European Data Protection Board Guidelines 04/2020 onthe use of location data and contact tracing tools in the context of the COVID-19 outbreak, 2020.04.21.

[4] The California Consumer Privacy Act of 2018, Cal. Civ. Code § 1798.100, <em>et seq.</em>