# **Proposal for Installation of Sidewalk Trash Bins in Gangseo-gu**

## **Analysis Overview:**

- In Gangseo-gu, Seoul, the issue of illegal dumping has significantly worsened, leading to a decline in urban cleanliness.  
- According to recent surveys, the amount of generated trash continues to rise, causing inconvenience to residents due to unauthorized dumping.  
- To address this problem, it is necessary to install sidewalk trash bins and additional CCTV cameras to prevent illegal dumping.
- The optimal locations for these installations need to be researched and proposed.

<p align="center">
 <img src="https://github.com/rootofdata/Gangseo-gu_contest/assets/86711374/521e5bdc-259b-4e9a-857c-6a30ffd3c0a4",width="20%" height="30%">
</p>  

### **Analysis Data:**

1. **Population Data:**  
    - Resident Population: People permanently residing in a specific area.  
    - Floating Population: Individuals visiting Seoul for work, tourism, medical purposes, commuting, etc.  
    - Data sourced from Seoul Open Data, covering local and international residents from January 2021 to February 2022.    
2. **Candidate Site Selection Criteria:**  
    - Facility requirements for installation, including bus stops, crosswalks on major roads, smoking zones, parks, and cafes, were prioritized.  
    - Criteria were established based on importance, and candidate sites were selected accordingly.  

4. **Facility Location Data:**  
    -  Sidewalk trash bin location data obtained from Seoul Information & Communication Plaza's public data, including detailed addresses.  
    -  CCTV location data provided by Gangseo-gu Office, focusing on data aimed at preventing unauthorized dumping.  
    -  Utilize the installation location data of sidewalk trash bins and unauthorized dumping prevention CCTV. Provide coordinates to accurately identify the positions of trash bins and CCTV.
  
5. **Environmental Crime Location Data:**
    -  Data obtained from KOSIS, indicating 35 types of crimes and their occurrences in specific locations from 2011 to 2020.  
    -  Only data related to environmental crimes was considered.  

### **Analysis Tools:**:
- **R, Python:** Utilized for visualization, GIS spatial analysis, P-median analysis, AHP, and other analytical processes.


## **Analysis Content:**

### **Algorithms and Methodologies:**

- **GIS Spatial Analysis:**
  - Utilized Google's geocoding API to extract coordinates and code the terrain, allocating codes and weights for facilities and candidate sites.  
  - This process was crucial for determining the locations of trash bins.  

- **P-median Algorithm:**
  - Employed the P-median algorithm, suitable for maximizing spatial accessibility.  
  - Minimized weighted distances to maximize citizens' accessibility to trash bins, selecting optimal locations.  
  - Utilized the Teitz-Bart exchange algorithm as the foundation for this solution.  

### **Analysis Procedures:**

1. **Demand Point Generation:**  
    -  Utilized data on the local population per business district in Gangseo-gu to generate demand points.  

2. **Establishment of Candidate Site Selection Criteria:**  
    -  Utilized environmental factor data to establish criteria for trash bin installation. Integrated existing trash bin locations as candidate sites.  

3. **Application of the P-median Model:**  
    -  Applied the P-median model to generated demand points and candidate site data to determine optimal locations.  
  
4. **Application of Filters:**  
    -  Considered the distance policy between trash bins set by district offices.  
    -  Excluded new optimal locations if the distance between them and existing bins was less than 100m, ensuring optimal trash bin selection and effective responses to urban cleanliness issues.  

### **1. Setting Optimal Locations for Trash Bins:**  
- Analyzed the need for trash bins in each administrative district to address shortages.  
- Utilized an index model considering environmental crime locations, resident population, and existing unauthorized dumping prevention CCTV to calculate priority installation indices.  
- Proposed optimal trash bin locations within these priority administrative districts.  

<p align="center">
 <img src="https://github.com/rootofdata/Gangseo-gu_contest/assets/86711374/73b28fb1-86ed-4cea-93fe-618836bebc58">
</p>  

#### **1. GIS Spatial Analysis:**  
  - Utilized Google's Geocoding API to extract coordinates for GIS spatial analysis. Coded facility and candidate site locations. Applied weighted criteria to determine trash bin positions effectively.  

#### **2. P-Median Algorithm:**  
  - Generated demand points based on the entire population data per business district. Utilized environmental factor data to establish criteria for trash bin installations and derived candidate locations.    
  - Applied the P-median model to find the optimal locations for trash bins within Gangseo-gu, maximizing citizens' accessibility.  
  - Considered the possibility of installing new bins if optimal locations were absent.    
  
#### **3. Application of Filters:**  
  - Excluded new optimal locations if the distance between them and existing bins was less than 100m, adhering to each district's trash bin distance policy.  

<p align="center">
 <img src="https://github.com/rootofdata/Gangseo-gu_contest/assets/86711374/31d01855-1a6b-49ef-8de2-8cf967fcbbd4">
</p>  

### **2. Setting Optimal Locations for Unauthorized Dumping Prevention CCTV:**

- Analyzed the need for CCTVs in each administrative district, considering resident population and the number of existing CCTVs.
- Utilized an index model to calculate priority installation indices and identified districts lacking adequate CCTV coverage.
- Proposed optimal locations for new CCTVs within these priority administrative districts.
  
<p align="center">
 <img src="https://github.com/rootofdata/Gangseo-gu_contest/assets/86711374/d70454c9-e72b-404c-8815-5e04a5a59ad7">
</p>  

#### **1. GIS Spatial Analysis:**
- Utilized Google's Geocoding API to extract coordinates for GIS spatial analysis.
- Coded facility and candidate site locations.
- Applied weighted criteria to determine CCTV positions effectively.

#### **2. Weighting Model Establishment:**
- Utilized the Analytic Hierarchy Process (AHP) to assign importance weights to various factors.
- AHP, a widely used decision-making technique, was applied to calculate the importance of different indicators by hierarchically comparing them.
- Ranked each indicator based on the components, weights, and business district area index to select priority installation areas.

#### **3. Gradation:**
- Ranked each indicator based on components, weights, and business district area index to select priority installation areas.

<p align="center">
 <img src="https://github.com/rootofdata/Gangseo-gu_contest/assets/86711374/7b1f3780-95e1-44a5-8b30-85ad3dab37a5">
</p>  

## **Analysis Results:**
### **Applications and Expected Benefits:**

#### **1. Prevention of Illegal Dumping and Preemptive Crime Prevention:**    
- The installation of additional trash bins and CCTV cameras is expected to prevent illegal dumping preemptively.   
- Multi-purpose CCTVs can prevent various crimes and safety accidents, including illegal parking, enhancing urban safety.
  
#### **2. Job Creation for Vulnerable Communities and Urban Cleanliness Maintenance:**  
- Recruitment of employees from vulnerable communities to manage trash bins and continuously monitor dumping-prone areas.  
- Providing employment opportunities to vulnerable communities expands social participation and maintains urban cleanliness.
  
#### **3. Improving Perception Through Design:**  
- Enhancing the aesthetic appeal of trash bins by incorporating design elements without compromising urban aesthetics.
- This approach maintains cleanliness and improves citizens' perception of urban cleanliness.  
- Through these proposals and findings, it is anticipated that the research will contribute to policy formulation and execution aimed at improving urban environments and preventing crimes effectively.  
