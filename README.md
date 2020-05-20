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


#### Project Assumptions

This project 

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

The concept of annonymization 

### Repository for Tools and Documents for Hackathon Project

### Future Work

Through this initial project, our team identified the following areas for future work to continue to build out effective solutions to balance the accuracy of location-data and privacy concerns:

1. Identifying the Privacy Risks 

2. Further define key legal terms & factors with corresponding statistical analysis

### Appendices 

[1] Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC.

[2] NIST Special Publication 800-53 (Rev. 4).

[3] European Data Protection Board Guidelines 04/2020 onthe use of location data and contact tracing tools in the context of the COVID-19 outbreak, 2020.04.21.