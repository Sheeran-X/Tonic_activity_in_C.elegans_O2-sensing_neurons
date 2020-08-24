<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.28 (Build 226) (http://www.copasi.org) at 2020-08-24T05:34:06Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="28" versionDevel="226" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Rate Law for Serca_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T10:33:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytosol*vM2*Ca^2/(Ca^2+k2^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="vM2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for ER Leak flux" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T11:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ER*kf*(Ca_ER-Ca)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="ER" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="kf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="Ca_ER" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="Ca" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for CICR_backup" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-25T10:43:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*(Ca_ER-Ca)*(L+(P_IP3R*IP3^3*Ca^3*h^3)/((IP3+Ki)^3*(Ca+Ka)^3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_270" name="Ca_ER" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="Ca" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_268" name="L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="P_IP3R" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="IP3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="h" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Ki" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Ka" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Oxygen sensing related Calcium signalling model" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T13:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-02T21:46:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1e-14-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Reference=InitialVolume>
        </InitialExpression>
      </Compartment>
      <Compartment key="Compartment_1" name="ER" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-23T15:49:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1e-15-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Reference=InitialVolume>
        </InitialExpression>
      </Compartment>
      <Compartment key="Compartment_2" name="Extracellular space" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-24T16:48:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="subspace" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:11:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="Junctional ER" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:13:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CaM" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T13:43:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="CaMCa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-01T14:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="CaMCa2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CaMCa3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="CaMCa4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Ca" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T16:42:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="CaN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="CaN_CaM" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="CaN_CaMCa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="CaN_CaMCa2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="CaN_CaMCa3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T18:28:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CaN_CaMCa4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:15:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CaMKII" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="CaMKII_CaMCa4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:33:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="CaMKIIp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:33:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="CaMKIIp_CaMCa4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-07T19:31:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PP1a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:41:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="CaMKIIp_PP1a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="CaMKIIp_CaMCa4_PP1a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:33:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="D" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Dp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PKA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:40:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="D_PKA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:40:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Dp_CaN_CaMCa4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:34:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="PP1a_Dp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:54:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Dp_CaN_CaMCa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-01T22:41:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Dp_CaN_CaMCa3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Dp_CaN_CaMCa2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-01T22:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="CaNi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="CaNi_Ca" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="CaNi_Ca2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:39:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="CaNi_Ca3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-02T11:35:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="glutamate" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-02T21:36:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="mglur5e" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="mglur5p" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Gq_GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="aq_GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Gq_GDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="PLC-beta" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="PLC-beta-active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="IP3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="PIP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-17T11:02:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Ca_ER" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-23T19:30:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Ca_extracellular" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T18:53:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Ca_sub" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:06:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Ca_JER" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[B_JSR],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_trans],Reference=Value>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_RyR],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="Calsequestrin" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T14:00:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="RyR_O1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:50:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="RyR_O2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:50:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="RyR_C1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:50:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="RyR_C2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:51:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="CaMKII_active_ratio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-07T17:58:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_total],Reference=Value>/&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_total],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="CaMKII_active_total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-07T18:02:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_PP1a],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="CaMKII_total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:07:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_PP1a],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="K_for_CaMKII_autophosphorylation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T00:12:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="K_CaMKII_autophosphorylation" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          max((-0.92900000000000005*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio],Reference=Value>^5+3.1280000000000001*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio],Reference=Value>^4-4.2489999999999997*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio],Reference=Value>^3+2.9980000000000002*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio],Reference=Value>^2+0.051520000000000003*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio],Reference=Value>-0.001008)*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_for_CaMKII_autophosphorylation],Reference=Value>,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="K_CaMKIIp_PP1a_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:36:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="K_CaMKIIp_PP1a_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:02:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="K_CaMKII_CaMCa4_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:15:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="K_D_PKA_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:17:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="K_D_PKA_off_p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="K_D_PKA_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:23:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="K_Dp_CaNCaMCa4_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:30:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="K_Dp_CaNCaMCa4_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:31:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="K_D_CaNCaMCa4_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:32:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="K_PP1a_Dp_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:42:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="K_PP1a_Dp_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="PP1a_total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:46:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_PP1a],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a_Dp],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k_mglur5_glu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:35:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_Gq_phosphorylation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:37:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k_Gq_dissociation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:38:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k_IP3_degradation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k_PLC_activation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:42:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="vM2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-23T16:09:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-01T19:00:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-01T19:05:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k_b_mglur5_glu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T11:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="alpha" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T12:49:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.6000000000000001/(1+exp(-0.071999999999999995*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>-5)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="alpha_prime" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T12:55:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (-26*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>+4)/(exp(-26*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>+4)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="beta" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T12:55:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.02*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>-1.3100000000000001)/(exp((&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>-1.3100000000000001)/5.3600000000000003)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="beta_prime" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T12:55:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (260*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>-20)/(exp(13*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>-1)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="F" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T12:58:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          C/mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="G_PMCA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:06:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="G_VGCC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:06:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          8e-8*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[z],Reference=Value>^2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[F],Reference=Value>^2/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[R_Gas],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[T],Reference=Value>*2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Q_calcium],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Avogadro Constant>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="J_Leak" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          0.39
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="J_PMCA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:09:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>^2/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>^2+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PMCA],Reference=InitialValue>^2)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="J_VGCC_simplified" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:09:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[M],Reference=Value>^2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>*((1+sign(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>))/2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>+(1-sign(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>))/2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="K_PMCA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="M" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:16:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[alpha],Reference=Value>/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[alpha],Reference=Value>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[beta],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:19:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          K
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="V" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:20:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[X],Reference=Value>)*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V1],Reference=Value>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[X],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="V_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:20:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="V_rest" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:20:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="X" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T14:29:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:09:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="P_IP3R" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:10:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="Ki" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:11:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="Ka" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:12:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="h" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:13:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[A],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Kd],Reference=Value>-(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Kd],Reference=Value>)*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[h],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:29:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Kd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-20T08:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="J_VGCC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:15:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[M],Reference=Value>^2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration>*exp(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[exponent_VGCC],Reference=Value>))/(1-exp(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[exponent_VGCC],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="R_Gas" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:17:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          J/(mol*K)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="z" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="exponent_VGCC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:19:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[z],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[F],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[R_Gas],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[T],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="V2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T19:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="V1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:20:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[alpha_prime],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V_max],Reference=Value>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>)-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[beta_prime],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V_rest],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="kf_IP3 formation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T11:23:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="[Ca]_ion_cytosol" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T11:50:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa],Reference=Concentration>+2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa2],Reference=Concentration>+3*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa3],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa4],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN],Reference=Concentration>+5*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa],Reference=Concentration>+6*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa2],Reference=Concentration>+7*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa3],Reference=Concentration>+8*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa4],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca],Reference=Concentration>+2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca2],Reference=Concentration>+3*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca3],Reference=Concentration>+5*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa],Reference=Concentration>+6*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa2],Reference=Concentration>+7*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa3],Reference=Concentration>+8*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="[Ca]_ion_intracellular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:35:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Reference=Volume>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="[Ca]_ion_total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Reference=Volume>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Reference=Volume>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="[Ca]_ion_CaMCa2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:37:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="[Ca]_ion_CaMCa3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:38:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          3*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="[Ca]_ion_CaMCa4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:39:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="[Ca]_ion_CaMKII_CaMCa4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:40:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="[Ca]_ion_CaMKIIp_CaMCa4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="[Ca]_ion_CaMKIIp_CaMCa4_PP1a" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:42:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="[Ca]_ion_CaN_CaMCa2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          6*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="[Ca]_ion_CaN_CaMCa3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:44:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          7*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="[Ca]_ion_CaN_CaMCa4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:44:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          8*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="[Ca]_ion_CaNi_Ca2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:44:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="[Ca]_ion_CaNi_Ca3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          3*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="[Ca]_ion_Dp_CaN_CaMCa2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:46:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          6*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="[Ca]_ion_Dp_CaN_CaMCa3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:47:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          7*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="[Ca]_ion_Dp_CaN_CaMCa4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-22T13:47:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          8*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa4],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Q_calcium" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-25T11:13:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*1.602e-19
        </Expression>
        <Unit>
          C
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="J_RyR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:26:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Max_RyR],Reference=Value>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open],Reference=Value>*(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="Max_RyR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:29:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="RyR_open" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:30:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O1],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O2],Reference=Concentration>)/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O1],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_C1],Reference=Concentration>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_C2],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="k_a+" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:36:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="k_a-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:37:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="k_b+" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:37:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="k_b-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:37:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="k_c+" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:37:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="k_c-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:38:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="J_trans" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:24:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration>)/&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[tau_trans],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="J_xfer" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:25:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration>-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration>)/&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[tau_xfer],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="tau_trans" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:31:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="tau_xfer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="B_JSR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T02:04:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(1+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Vector=Metabolites[Calsequestrin],Reference=Concentration>*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Km_CSQN],Reference=Value>/(&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Km_CSQN],Reference=Value>+&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration>)^2)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="Km_CSQN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T02:05:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="[Ca]_ion_CaN" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-29T12:26:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="[Ca]_ion_CaN_CaMCa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-29T12:28:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          5*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="[Ca]_ion_CaN_CaM" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-29T12:28:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaM],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="[Ca]_ion_Dp_CaN_CaMCa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-29T12:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          5*&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="G_VGCC_fixed" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-29T15:16:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="CaM binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T14:03:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5382" name="k1" value="518600"/>
          <Constant key="Parameter_5381" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5382"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="CaMCa binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T16:10:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5380" name="k1" value="516010"/>
          <Constant key="Parameter_5379" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="CaMCa2 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T16:12:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="k1" value="133770"/>
          <Constant key="Parameter_5377" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5378"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="CaMCa3 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-24T16:13:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="k1" value="38784"/>
          <Constant key="Parameter_5375" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="CaN binds CaM" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:13:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5374" name="k1" value="0.2"/>
          <Constant key="Parameter_5373" name="k2" value="5000"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="CaN binds CaMCa" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:15:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="k1" value="4.6e+07"/>
          <Constant key="Parameter_5371" name="k2" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="CaN binds CaMCa2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:16:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="k1" value="4.6e+07"/>
          <Constant key="Parameter_5369" name="k2" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="CaN binds CaMCa3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:18:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5368" name="k1" value="4.6e+07"/>
          <Constant key="Parameter_5367" name="k2" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="CaN binds CaMCa4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:20:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="k1" value="4.6e+07"/>
          <Constant key="Parameter_5365" name="k2" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5366"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="CaN-CaM binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:21:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="k1" value="100.004"/>
          <Constant key="Parameter_5363" name="k2" value="60"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CaN-CaMCa binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:22:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="k1" value="100.004"/>
          <Constant key="Parameter_5361" name="k2" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="CaN-CaMCa2 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5360" name="k1" value="100.004"/>
          <Constant key="Parameter_5359" name="k2" value="8"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CaN-CaMCa3 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T12:25:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5358" name="k1" value="100.004"/>
          <Constant key="Parameter_5682" name="k2" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5358"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5682"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CaMKII binds CaMCa4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-04T13:01:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5683" name="k1" value="100.004"/>
          <Constant key="Parameter_5681" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5683"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5681"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="CaMKII phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5684" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="CaMKIIp_CaMCa4 binds PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5711" name="k1" value="3e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="CaMKII_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:04:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5712" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5712"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="CaMKIIp dissociating from CaMKIIp_CaMCa4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:16:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5710" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="D phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:18:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5713" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Dp dissociation from D_PKA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:22:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5695" name="k1" value="2.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="D dissociaton from D_PKA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5696" name="k1" value="10.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Dp binding to CaN-CaMCa4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:28:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5694" name="k1" value="4.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="D dissociation from Dp_CaN_CaMCa4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:32:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5697" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Dp dissociating from Dp_CaN_CaMCa4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5357" name="k1" value="6.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Dp binding to PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:41:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5356" name="k1" value="4e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Dp dissociating from PP1a_Dp" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:43:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5355" name="k1" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Dp binding to CaN_CaMCa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:27:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="k1" value="4.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Dp binding to CaN_CaMCa2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:29:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5353" name="k1" value="4.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Dp binding to CaN_CaMCa3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:30:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="k1" value="4.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Dp dissociating from Dp_CaN_CaMCa3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:32:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5351" name="k1" value="6.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Dp dissociating from Dp_CaN_CaMCa2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:36:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5350" name="k1" value="6.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Dp dissociating from Dp_CaN_CaMCa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T16:37:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5349" name="k1" value="6.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="CaMKIIp_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:27:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5348" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="CaMKIIp binds PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:32:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5347" name="k1" value="3e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="CaMKIIp dissociating from CaMKIIp_PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:34:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5346" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="CaMKII dissociating from CaMKIIp_PP1a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:36:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5345" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5345"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="CaNi binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:40:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5344" name="k1" value="2e+07"/>
          <Constant key="Parameter_5343" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_28"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="CaNi_Ca binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:41:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5342" name="k1" value="2e+07"/>
          <Constant key="Parameter_5650" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5650"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="CaNi_Ca2 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:41:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5651" name="k1" value="2e+07"/>
          <Constant key="Parameter_5649" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5651"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_30"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="CaNi_Ca3 binds Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:42:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5652" name="k1" value="2e+07"/>
          <Constant key="Parameter_5341" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5652"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="D binds PKA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-11T21:43:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5340" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="glutamate binding mglur5e" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:10:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5339" name="k2" value="1e-05"/>
          <Constant key="Parameter_5338" name="k1" value="1.68e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_33"/>
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Gq phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:12:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5337" name="k1" value="1.27e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Gq to aq" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:20:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5336" name="k1" value="3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="PLC activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:23:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5335" name="k1" value="1e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="IP3 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:25:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5330" name="k1" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="PIP2 to IP3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:26:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5334" name="k1" value="48"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
              <SourceParameter reference="Metabolite_41"/>
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="CICR through IP3R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-22T21:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5332" name="P_IP3R" value="66.6"/>
          <Constant key="Parameter_5331" name="h" value="0.00677558"/>
          <Constant key="Parameter_5333" name="L" value="0.00093"/>
          <Constant key="Parameter_5329" name="Ki" value="1e-06"/>
          <Constant key="Parameter_5328" name="Ka" value="4e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="ER_Leak flux" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-23T16:04:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5327" name="kf" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Serca" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-23T16:07:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5326" name="k2" value="1e-07"/>
          <Constant key="Parameter_5325" name="vM2" value="1.5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Ca elimination through PMCA Pump" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:49:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5324" name="k1" value="2.41434e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Ca influx through leak" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:51:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5323" name="k1" value="3.9e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Ca influx through VGCC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:57:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5322" name="k1" value="-1.23403e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="CICR through RyR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-10T13:24:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5321" name="k1" value="4.09979e-17"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Diffusion from subspace to cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:44:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5315" name="k1" value="-1.35378e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Diffusion from ER to JER" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-11T01:52:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5314" name="k1" value="4.39239e-17"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="RyR_Open" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:51:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="4"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5313" name="k1" value="1.215e+19"/>
          <Constant key="Parameter_5312" name="k2" value="1425"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_49"/>
              <SourceParameter reference="Metabolite_44"/>
              <SourceParameter reference="Metabolite_44"/>
              <SourceParameter reference="Metabolite_44"/>
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="RyR_Transformation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:55:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5311" name="k2" value="1930"/>
          <Constant key="Parameter_5310" name="k1" value="4.05e+12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_47"/>
              <SourceParameter reference="Metabolite_44"/>
              <SourceParameter reference="Metabolite_44"/>
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="RyR_Close" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-17T17:58:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5309" name="k2" value="0.8"/>
          <Constant key="Parameter_5306" name="k1" value="18"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Oxygen sensing induced depolarization" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T15:20:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time> > 50
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[X]" targetKey="ModelValue_58">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="O2 withdrawal" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-20T03:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time> > 1500
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[X]" targetKey="ModelValue_58">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol]" value="9.9990000000000002e-15" type="Compartment" simulationType="fixed">
            <InitialExpression>
              1e-14-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Reference=InitialVolume>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER]" value="9.0000000000000003e-16" type="Compartment" simulationType="fixed">
            <InitialExpression>
              1e-15-&lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Reference=InitialVolume>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space]" value="1e-14" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace]" value="1.0000000000000001e-18" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER]" value="9.9999999999999998e-17" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaM]" value="535179.08080119139" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa]" value="6729.1359999784736" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa2]" value="84.187010513181633" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa3]" value="0.27304327163353642" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa4]" value="0.00025675076181417937" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca]" value="145.99404698040112" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN]" value="1.6566872577987345e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaM]" value="1.7123945529512096e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa]" value="1.4269949706779231e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa2]" value="1.0276487075614765e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa3]" value="4.1179131397134124e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa4]" value="1.0692086610880342e-13" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII]" value="391439.15568830859" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4]" value="1.6691135962190318e-05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a]" value="517.45556598766836" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_PP1a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[D]" value="3.2734541267962007e-14" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp]" value="378.94632621474415" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PKA]" value="68.652405769800296" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[D_PKA]" value="3.0962697960421923e-16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa4]" value="4.1799646829704085e-15" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a_Dp]" value="325.6441539923328" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa]" value="5.753028803511903e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa3]" value="1.6601651293468336e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa2]" value="4.1430367560339629e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi]" value="2996.4695621224109" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca]" value="14.530064289836996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca2]" value="0.070457170977088507" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca3]" value="0.00034165113402492863" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[glutamate]" value="60215386.429143101" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[mglur5e]" value="1806.4615928742915" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[mglur5p]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Gq_GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[aq_GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Gq_GDP]" value="602.15386429142995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PLC-beta]" value="4817.2309143314396" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PLC-beta-active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[IP3]" value="602.15386429142995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PIP2]" value="301076.93214571499" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER]" value="9033.2113177745032" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular]" value="1322277.8497714989" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub]" value="0.012053163734260821" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER]" value="100358.97774046515" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Junctional ER],Vector=Metabolites[Calsequestrin]" value="903321.12855000177" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O1]" value="8.2397286593984286e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_O2]" value="1.3863122631186102e-23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_C1]" value="602214.08569998655" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[RyR_C2]" value="1.8539389527541076e-08" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_ratio]" value="4.2640435221992096e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_active_total]" value="2.7719054799774821e-15" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[CaMKII_total]" value="6.5006500650064965e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_for_CaMKII_autophosphorylation]" value="58540012.416900001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKII_autophosphorylation]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKIIp_PP1a_on]" value="3000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKIIp_PP1a_off]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKII_CaMCa4_off]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_on]" value="5600000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_off_p]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_off]" value="10.800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_on]" value="4100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_off]" value="6.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_CaNCaMCa4_off]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PP1a_Dp_on]" value="4000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PP1a_Dp_off]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[PP1a_total]" value="1.4001400140014022e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_mglur5_glu]" value="1.6799999999999998e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_Gq_phosphorylation]" value="127000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_Gq_dissociation]" value="30000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_IP3_degradation]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_PLC_activation]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[vM2]" value="1.5e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[kf]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k2]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b_mglur5_glu]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[alpha]" value="0.0072917642031718787" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[alpha_prime]" value="0.074629477616401332" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[beta]" value="1.4224373511463697" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[beta_prime]" value="31.639529968677632" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[F]" value="96485.330000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA]" value="0.0014809999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC]" value="3.0950513877919802e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak]" value="3.9e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_PMCA]" value="2.4143449886202162e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_VGCC_simplified]" value="-1.2340304590224056e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PMCA]" value="5.9999999999999997e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[M]" value="0.0051001019178302052" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[T]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V]" value="-69.811744712344577" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V_max]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V_rest]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[X]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[L]" value="0.00093000000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[P_IP3R]" value="66.599999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Ki]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Ka]" value="3.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[h]" value="0.0067755754498837126" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[A]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Kd]" value="3.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_VGCC]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[R_Gas]" value="8.3140000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[z]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[exponent_VGCC]" value="5401.1781143824255" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V1]" value="-69.811744712344577" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[kf_IP3 formation]" value="48" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol]" value="1.1722911249856795e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_intracellular]" value="2.8388425699695115e-20" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_total]" value="2.2240824175373536e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa2]" value="2.7961959726770719e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa3]" value="1.3603330701273511e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa4]" value="1.705549209528396e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKII_CaMCa4]" value="1.1087621919909928e-14" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKIIp_CaMCa4]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKIIp_CaMCa4_PP1a]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa2]" value="1.0239728765378636e-16" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa3]" value="4.7870475782653113e-19" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa4]" value="1.42051223050268e-22" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaNi_Ca2]" value="2.3401716788780316e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaNi_Ca3]" value="1.7021453532991522e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa2]" value="4.1282173893303978e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa3]" value="1.9299313007154324e-20" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa4]" value="5.5533509700402981e-24" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Q_calcium]" value="3.204e-19" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_RyR]" value="4.0997880578847132e-17" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Max_RyR]" value="1800" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open]" value="1.3682391121457765e-15" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_a+]" value="1.215e+19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_a-]" value="1425" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b+]" value="4050000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b-]" value="1930" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_c+]" value="18" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_c-]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_trans]" value="4.6085667315808224e-17" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_xfer]" value="-1.3537782583328871e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[tau_trans]" value="0.034479999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[tau_xfer]" value="0.0031250000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[B_JSR]" value="0.052652354122315129" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Km_CSQN]" value="0.00080000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN]" value="1.1005075985010582e-15" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa]" value="1.1849089205440081e-15" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaM]" value="1.1375129544115629e-17" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa]" value="4.7770421686836147e-17" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed]" value="0.00030950513879999999" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaM binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaM binds Ca],ParameterGroup=Parameters,Parameter=k1" value="518600" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaM binds Ca],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa binds Ca],ParameterGroup=Parameters,Parameter=k1" value="516010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa binds Ca],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa2 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa2 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="133770" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa2 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa3 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa3 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="38784" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMCa3 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaM],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaM],ParameterGroup=Parameters,Parameter=k2" value="5000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa],ParameterGroup=Parameters,Parameter=k1" value="46000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa2],ParameterGroup=Parameters,Parameter=k1" value="46000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa2],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa3],ParameterGroup=Parameters,Parameter=k1" value="46000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa3],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="46000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN binds CaMCa4],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaM binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaM binds Ca],ParameterGroup=Parameters,Parameter=k1" value="100.004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaM binds Ca],ParameterGroup=Parameters,Parameter=k2" value="60" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa binds Ca],ParameterGroup=Parameters,Parameter=k1" value="100.004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa binds Ca],ParameterGroup=Parameters,Parameter=k2" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa2 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa2 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="100.004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa2 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa3 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa3 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="100.004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaN-CaMCa3 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="30" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII binds CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII binds CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="100.004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII binds CaMCa4],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII phosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKII_autophosphorylation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp_CaMCa4 binds PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp_CaMCa4 binds PP1a],ParameterGroup=Parameters,Parameter=k1" value="3000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKIIp_PP1a_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp dissociating from CaMKIIp_CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp dissociating from CaMKIIp_CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKII_CaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D phosphorylation],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociation from D_PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociation from D_PKA],ParameterGroup=Parameters,Parameter=k1" value="2.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_off_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D dissociaton from D_PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D dissociaton from D_PKA],ParameterGroup=Parameters,Parameter=k1" value="10.800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_PKA_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN-CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN-CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="4100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D dissociation from Dp_CaN_CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D dissociation from Dp_CaN_CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_D_CaNCaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa4],ParameterGroup=Parameters,Parameter=k1" value="6.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to PP1a],ParameterGroup=Parameters,Parameter=k1" value="4000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PP1a_Dp_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from PP1a_Dp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from PP1a_Dp],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_PP1a_Dp_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa],ParameterGroup=Parameters,Parameter=k1" value="4100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa2],ParameterGroup=Parameters,Parameter=k1" value="4100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp binding to CaN_CaMCa3],ParameterGroup=Parameters,Parameter=k1" value="4100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa3],ParameterGroup=Parameters,Parameter=k1" value="6.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa2],ParameterGroup=Parameters,Parameter=k1" value="6.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Dp dissociating from Dp_CaN_CaMCa],ParameterGroup=Parameters,Parameter=k1" value="6.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_Dp_CaNCaMCa4_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp_CaMCa4 dissociation CaMKIIp_CaMCa4_PP1a],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKIIp_PP1a_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp binds PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp binds PP1a],ParameterGroup=Parameters,Parameter=k1" value="3000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp dissociating from CaMKIIp_PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKIIp dissociating from CaMKIIp_PP1a],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[K_CaMKIIp_PP1a_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII dissociating from CaMKIIp_PP1a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaMKII dissociating from CaMKIIp_PP1a],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi binds Ca],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi binds Ca],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca binds Ca],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca binds Ca],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca2 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca2 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca2 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca3 binds Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca3 binds Ca],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CaNi_Ca3 binds Ca],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D binds PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[D binds PKA],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[glutamate binding mglur5e]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[glutamate binding mglur5e],ParameterGroup=Parameters,Parameter=k2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b_mglur5_glu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[glutamate binding mglur5e],ParameterGroup=Parameters,Parameter=k1" value="1.6799999999999998e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_mglur5_glu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Gq phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Gq phosphorylation],ParameterGroup=Parameters,Parameter=k1" value="127000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_Gq_phosphorylation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Gq to aq]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Gq to aq],ParameterGroup=Parameters,Parameter=k1" value="30000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_Gq_dissociation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[PLC activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[PLC activation],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_PLC_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[IP3 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[IP3 degradation],ParameterGroup=Parameters,Parameter=k1" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_IP3_degradation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[PIP2 to IP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[PIP2 to IP3],ParameterGroup=Parameters,Parameter=k1" value="48" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[kf_IP3 formation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],ParameterGroup=Parameters,Parameter=P_IP3R" value="66.599999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[P_IP3R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],ParameterGroup=Parameters,Parameter=h" value="0.0067755754498837126" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],ParameterGroup=Parameters,Parameter=L" value="0.00093000000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],ParameterGroup=Parameters,Parameter=Ki" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Ki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],ParameterGroup=Parameters,Parameter=Ka" value="3.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[Ka],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[ER_Leak flux]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[ER_Leak flux],ParameterGroup=Parameters,Parameter=kf" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[kf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Serca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Serca],ParameterGroup=Parameters,Parameter=k2" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Serca],ParameterGroup=Parameters,Parameter=vM2" value="1.5e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[vM2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca elimination through PMCA Pump]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca elimination through PMCA Pump],ParameterGroup=Parameters,Parameter=k1" value="2.4143449886202162e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_PMCA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through leak]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through leak],ParameterGroup=Parameters,Parameter=k1" value="3.9e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through VGCC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through VGCC],ParameterGroup=Parameters,Parameter=k1" value="-1.2340304590224056e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_VGCC_simplified],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through RyR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through RyR],ParameterGroup=Parameters,Parameter=k1" value="4.0997880578847132e-17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_RyR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from subspace to cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from subspace to cytosol],ParameterGroup=Parameters,Parameter=k1" value="-1.3537782583328871e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_xfer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from ER to JER]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from ER to JER],ParameterGroup=Parameters,Parameter=k1" value="4.6085667315808224e-17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_trans],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Open]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Open],ParameterGroup=Parameters,Parameter=k1" value="1.215e+19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_a+],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Open],ParameterGroup=Parameters,Parameter=k2" value="1425" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_a-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Transformation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Transformation],ParameterGroup=Parameters,Parameter=k2" value="1930" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Transformation],ParameterGroup=Parameters,Parameter=k1" value="4050000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_b+],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Close]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Close],ParameterGroup=Parameters,Parameter=k2" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_c-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[RyR_Close],ParameterGroup=Parameters,Parameter=k1" value="18" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[k_c+],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.0067755754498837126 -69.811744712344577 100358.97774046515 0.012053163734260821 145.99404698040112 378.94632621474415 517.45556598766836 1.6566872577987345e-06 1.4269949706779231e-06 4.1179131397134124e-10 3.2734541267962007e-14 0.00025675076181417937 9033.2113177745032 1.0692086610880342e-13 0 8.2397286593984286e-10 84.187010513181633 1322277.8497714989 1.0276487075614765e-07 6729.1359999784736 14.530064289836996 0 602.15386429142995 1.6691135962190318e-05 0.00034165113402492863 0 0 0.27304327163353642 60215386.429143101 1.7123945529512096e-08 1.6601651293468336e-11 0 4.1430367560339629e-09 0.070457170977088507 1.8539389527541076e-08 5.753028803511903e-08 301076.93214571499 3.0962697960421923e-16 602.15386429142995 535179.08080119139 602214.08569998655 0 2996.4695621224109 0 391439.15568830859 4.1799646829704085e-15 1.3863122631186102e-23 68.652405769800296 325.6441539923328 4817.2309143314396 1806.4615928742915 0 4.2640435221992096e-11 2.7719054799774821e-15 6.5006500650064965e-05 0 1.4001400140014022e-07 0.0072917642031718787 0.074629477616401332 1.4224373511463697 31.639529968677632 3.0950513877919802e-06 2.4143449886202162e-06 -1.2340304590224056e-10 0.0051001019178302052 -69.811744712344577 NaN 5401.1781143824255 1.1722911249856795e-06 2.8388425699695115e-20 2.2240824175373536e-18 2.7961959726770719e-08 1.3603330701273511e-10 1.705549209528396e-13 1.1087621919909928e-14 0 0 1.0239728765378636e-16 4.7870475782653113e-19 1.42051223050268e-22 2.3401716788780316e-11 1.7021453532991522e-13 4.1282173893303978e-18 1.9299313007154324e-20 5.5533509700402981e-24 3.204e-19 4.0997880578847132e-17 1.3682391121457765e-15 4.6085667315808224e-17 -1.3537782583328871e-06 0.052652354122315129 1.1005075985010582e-15 1.1849089205440081e-15 1.1375129544115629e-17 4.7770421686836147e-17 903321.12855000177 9.9990000000000002e-15 9.0000000000000003e-16 1e-14 1.0000000000000001e-18 9.9999999999999998e-17 58540012.416900001 3000000 0.5 0.001 5600000 2.7000000000000002 10.800000000000001 4100000 6.4000000000000004 0.20000000000000001 4000000 0.40000000000000002 1.6799999999999998e-05 127000000000 30000000 0.080000000000000002 100000000 1.5e-05 0.5 9.9999999999999995e-08 1.0000000000000001e-05 96485.330000000002 0.0014809999999999999 3.9e-10 5.9999999999999997e-07 300 10 -70 0 0.00093000000000000005 66.599999999999994 9.9999999999999995e-07 3.9999999999999998e-07 0.5 3.9999999999999998e-07 8.3140000000000001 2 10 48 1800 1.215e+19 1425 4050000000000 1930 18 0.80000000000000004 0.034479999999999997 0.0031250000000000002 0.00080000000000000004 0.00030950513879999999 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="15000"/>
        <Parameter name="StepSize" type="float" value="0.20000000000000001"/>
        <Parameter name="Duration" type="float" value="3000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open_amplifier],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="10000000"/>
            <Parameter name="Maximum" type="float" value="100000000"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Calcium" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="All concentrations" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKII]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKII_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKII_CaMCa4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKIIp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKIIp_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKIIp_CaMCa4_PP1a]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_CaMCa4_PP1a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMKIIp_PP1a]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMKIIp_PP1a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaM]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaM]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaNi]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaNi_Ca2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaNi_Ca3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaNi_Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ES]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[D_PKA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[D_PKA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp_CaN_CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp_CaN_CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp_CaN_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp_CaN_CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gq_GDP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Gq_GDP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gq_GTP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Gq_GTP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[IP3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PIP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PKA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PLC-beta-active]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PLC-beta-active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PLC-beta]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PLC-beta],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP1a]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP1a_Dp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[PP1a_Dp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[aq_GTP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[aq_GTP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[glutamate]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[glutamate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mglur5e]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[mglur5e],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mglur5p]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[mglur5p],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Voltage" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[V]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[V],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[RyR_open]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Calcium fluxes" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(Ca elimination through PMCA Pump).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca elimination through PMCA Pump],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Ca influx through VGCC).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through VGCC],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Ca influx through leak).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through leak],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(ER_Leak flux).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[ER_Leak flux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Serca).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Serca],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(CICR through RyR).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through RyR],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Diffusion from subspace to cytosol).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from subspace to cytosol],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Diffusion from ER to JER).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from ER to JER],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(CICR through IP3R).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through IP3R],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Ca trace" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[[Ca]_ion_CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMCa4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaMKII_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKII_CaMCa4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaMKIIp_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKIIp_CaMCa4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaMKIIp_CaMCa4_PP1a]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaMKIIp_CaMCa4_PP1a],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaN_CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaN_CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaN_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaN_CaMCa4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaNi_Ca2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaNi_Ca2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_CaNi_Ca3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_CaNi_Ca3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_Dp_CaN_CaMCa2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_Dp_CaN_CaMCa3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_Dp_CaN_CaMCa4]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_Dp_CaN_CaMCa4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_cytosol]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_intracellular]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_intracellular],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[[Ca]_ion_total]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_total],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaN_CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaN_CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaNi_Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[CaNi_Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_extracellular]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dp_CaN_CaMCa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Dp_CaN_CaMCa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_JER]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_sub]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="G_PMCA Scan" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[[Ca]_ion_cytosol]|Values[G_PMCA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Values[G_PMCA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Values[G_PMCA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_extracellular]|Values[G_PMCA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_PMCA],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="J_Leak Scan" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[[Ca]_ion_cytosol]|Values[J_Leak]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[\[Ca\]_ion_cytosol],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Values[J_Leak]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Values[J_Leak]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_extracellular]|Values[J_Leak]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[J_Leak],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="G_VGCC Scan" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(Ca elimination through PMCA Pump).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca elimination through PMCA Pump],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Ca influx through VGCC).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through VGCC],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Ca influx through leak).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Ca influx through leak],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Diffusion from ER to JER).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from ER to JER],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Diffusion from subspace to cytosol).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Diffusion from subspace to cytosol],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(ER_Leak flux).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[ER_Leak flux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Serca).Flux|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[Serca],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER]|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[ER],Vector=Metabolites[Ca_ER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_JER]|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca_JER],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_extracellular]|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[Extracellular space],Vector=Metabolites[Ca_extracellular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_sub]|Values[G_VGCC_fixed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[G_VGCC_fixed],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[subspace],Vector=Metabolites[Ca_sub],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Scan_RyR" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(CICR through RyR).Flux|Values[RyR_open_amplifier]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open_amplifier],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Reactions[CICR through RyR],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[RyR_open]|Values[RyR_open_amplifier]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open_amplifier],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Values[RyR_open_amplifier]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Values[RyR_open_amplifier],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen sensing related Calcium signalling model,Vector=Compartments[cytosol],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Merging.xml">
    <SBMLMap SBMLid="Ca" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="CaM" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CaMCa" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="CaMCa2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="CaMCa2_binds_Ca" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="CaMCa3" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="CaMCa3_binds_Ca" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="CaMCa4" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="CaMCa_binds_Ca" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="CaMKII" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="CaMKII_CaMCa4" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="CaMKII_CaMCa4_dissociation_CaMKIIp_CaMCa4_PP1a" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="CaMKII_active_ratio" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="CaMKII_active_total" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="CaMKII_binds_CaMCa4" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CaMKII_dissociating_from_CaMKIIp_PP1a" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="CaMKII_phosphorylation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="CaMKII_total" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="CaMKIIp" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="CaMKIIp_CaMCa4" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="CaMKIIp_CaMCa4_PP1a" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="CaMKIIp_CaMCa4_binds_PP1a" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="CaMKIIp_CaMCa4_dissociation_CaMKIIp_CaMCa4_PP1a" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="CaMKIIp_PP1a" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="CaMKIIp_binds_PP1a" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="CaMKIIp_dissociating_from_CaMKIIp_CaMCa4" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="CaMKIIp_dissociating_from_CaMKIIp_PP1a" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="CaM_binds_Ca" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="CaN" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="CaN_CaM" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="CaN_CaMCa" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="CaN_CaMCa2" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CaN_CaMCa2_binds_Ca" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="CaN_CaMCa3" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="CaN_CaMCa3_binds_Ca" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CaN_CaMCa4" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="CaN_CaMCa_binds_Ca" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CaN_CaM_binds_Ca" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="CaN_binds_CaM" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="CaN_binds_CaMCa" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="CaN_binds_CaMCa2" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="CaN_binds_CaMCa3" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="CaN_binds_CaMCa4" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="CaNi" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="CaNi_Ca" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="CaNi_Ca2" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="CaNi_Ca2_binds_Ca" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="CaNi_Ca3" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="CaNi_Ca3_binds_Ca" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="CaNi_Ca_binds_Ca" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="CaNi_binds_Ca" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Ca_elimination_through_PMCA_Pump" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="Ca_influx_through_VGCC" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Ca_influx_through_leak" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="Calcium_in_ER" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="D_PKA" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="D_binds_PKA" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="D_dissociation_from_Dp_CaN_CaMCa4" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="D_dissociaton_from_D_PKA" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="D_phosphorylation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Dp" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Dp_CaN_CaMCa" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Dp_CaN_CaMCa2" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Dp_CaN_CaMCa3" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Dp_CaN_CaMCa4" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Dp_binding_to_CaN_CaMCa" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Dp_binding_to_CaN_CaMCa2" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Dp_binding_to_CaN_CaMCa3" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Dp_binding_to_CaN_CaMCa4" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Dp_binding_to_PP1a" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Dp_dissociating_from_Dp_CaN_CaMCa" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Dp_dissociating_from_Dp_CaN_CaMCa2" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Dp_dissociating_from_Dp_CaN_CaMCa3" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Dp_dissociating_from_Dp_CaN_CaMCa4" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Dp_dissociating_from_PP1a_Dp" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Dp_dissociation_from_D_PKA" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="ER" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Extracellular_Ca" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="Extracellular_space" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="F" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="G_PMCA" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="G_VGCC" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Gq_GDP" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Gq_GTP" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="IP3" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="J_Leak" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="J_PMCA" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="J_VGCC" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="K_CaMKII_CaMCa4_off" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="K_CaMKII_autophosphorylation" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="K_CaMKIIp_PP1a_off" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="K_CaMKIIp_PP1a_on" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="K_D_CaNCaMCa4_off" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="K_D_PKA_off" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="K_D_PKA_off_p" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="K_D_PKA_on" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="K_Dp_CaNCaMCa4_off" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="K_Dp_CaNCaMCa4_on" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="K_PMCA" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="K_PP1a_Dp_off" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="K_PP1a_Dp_on" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="K_for_CaMKII_autophosphorylation" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="M" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PKA" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PLC_beta" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="PLC_beta_active" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="PP1a" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="PP1a_Dp" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="PP1a_total" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Rate_Law_for_Serca_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="T" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="V" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="V_max" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="V_rest" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="X" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="_CICR" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="_Gq_phosphorylation" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="_Gq_to_aq" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="_IP3_degradation" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="_Leak_flux" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="_PIP2_to_IP3" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="_PLC_activation" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="_Serca" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="_glutamate_binding_mglur5e" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="alpha_prime" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="aq_GTP" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="beta_prime" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="glutamate" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k_Gq_dissociation" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k_Gq_phosphorylation" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k_IP3_degradation" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k_PLC_activation" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k_b_mglur5_glu" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k_mglur5_glu" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kf" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="mglur5e" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="mglur5p" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="vM2" COPASIkey="ModelValue_29"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_7" name="ampere" symbol="A">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        A
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_9" name="kelvin" symbol="K">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_21" name="coulomb" symbol="C">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s*A
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_31" name="joule" symbol="J">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_30">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^2*kg*s^-2
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-24T05:30:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
