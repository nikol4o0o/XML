function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    // Вместо коментар генерирайте валиден XML документ
    let smartwatchCatalog = doc.createElement('smartwatchCatalog');
    doc.appendChild(smartwatchCatalog);

    //smartwatch
    let smartwatch = doc.createElement('smartwatch');
    //smartwatch.setAttribute("", '')
    smartwatchCatalog.append(smartwatch);

    //smartwatch elements
    let id = doc.createElement('id');
    id.textContent = '0008';
    let brand = doc.createElement('brand');
    brand.textContent = 'Samsung';
    let model = doc.createElement('model');
    model.textContent = 'Галакси Уоч4 Класик';
    model.setAttribute('number', 'SM-R890');
    let year = doc.createElement('year');
    year.textContent = '2021';

    let gallery = doc.createElement('gallery');
    let frontImage = doc.createElement('frontImage');
    frontImage.textContent = 'Images/frontImageS4Classic.jpeg';
    let sideImage = doc.createElement('sideImage');
    sideImage.textContent = 'Images/sideImageS4Classic.jpeg';
    let onHandImage = doc.createElement('onHandImage');
    onHandImage.textContent = 'Images/onHandS4Classic.jpeg';

    gallery.append(frontImage, sideImage, onHandImage);


    let price = doc.createElement('price');
    price.textContent = '1000';
    price.setAttribute('currency', 'Евро')
    let colourWatch = doc.createElement('colourWatch');
    colourWatch.textContent = 'Черен';
    let storage = doc.createElement('storage');
    storage.textContent = '16ГБ';

    let RAM = doc.createElement('RAM');
    RAM.textContent = '1.5ГБ';

    //body elements
    let body = doc.createElement('body');
    body.setAttribute('waterRating', '50 метра');
    let display = doc.createElement('display');
    display.setAttribute('alwaysON', 'Да');
    let size = doc.createElement('size');
    size.textContent = '46мм';
    let type = doc.createElement('type');
    type.textContent = 'AMOLED';
    let resolution = doc.createElement('resolution');
    resolution.textContent = '450X450';
    let isLTPO = doc.createElement('isLTPO');
    isLTPO.textContent = 'Не';
    display.append(size, type, resolution, isLTPO)

    let shape = doc.createElement('shape');
    shape.textContent = 'Кръгла';
    let weight = doc.createElement('weight');
    weight.textContent = '52 грама';
    let caseMaterial = doc.createElement('caseMaterial');
    caseMaterial.textContent = 'Неръждаема стомана';
    body.append(display,shape, weight, caseMaterial)

    //features
    let features = doc.createElement('features');
    features.setAttribute('ECG', 'Да');
    features.setAttribute('BloodO2', 'Да');
    let battery = doc.createElement('battery');
    let capacity = doc.createElement('capacity');
    capacity.textContent = '361 мАч';
    let hoursRated = doc.createElement('hoursRated');
    hoursRated.textContent = '24 часа';
    let typeOfBattery = doc.createElement('typeOfBattery');
    typeOfBattery.textContent = 'Литиево-йонна';
    battery.append(capacity, hoursRated, typeOfBattery);
    let CPU = doc.createElement('CPU');
    CPU.textContent = 'Exynos W920 ';
    let OS = doc.createElement('OS');
    OS.textContent = 'WearOS';
    OS.setAttribute('compatibility','Android устройства');
    OS.setAttribute('version', '3');
    features.append(battery, CPU, OS)

    //connection
    let connection = doc.createElement('connection');
    let WLAN = doc.createElement('WLAN');
    WLAN.textContent = '802.11 a/b/g/n';
    let bluetooth = doc.createElement('bluetooth');
    bluetooth.textContent = '5.0';
    let payment = doc.createElement('payment');
    payment.textContent = 'Samsung Pay Стандарт за безконтактно мобилно плащане';
    let NFC = doc.createElement('NFC');
    NFC.textContent = 'Да';
    connection.append(WLAN, bluetooth, payment, NFC)


    //band
    let band = doc.createElement('band');
    band.setAttribute('changeable', 'Да');
    let sizing = doc.createElement('sizing');
    sizing.textContent = 'Универсален размер';
    let materialBand = doc.createElement('materialBand');
    materialBand.textContent = 'Силиконова';
    let colour = doc.createElement('colour');
    colour.textContent = 'Черен';
    let style = doc.createElement('style');
    style.textContent = 'Елегантна';
    band.append(sizing, materialBand, colour, style);


    smartwatch.append(id,brand, model, year, gallery, price, colourWatch, storage, RAM,  body, features, connection, band);

    return doc;
}
