public class FilteredIterable implements Iterable<SObject> {
    private List<SObject> records;

    public FilteredIterable(List<SObject> records) {
        this.records = records;
    }

    public Iterator<SObject> iterator() {
        // Filtra apenas registros ativos
        List<SObject> activeRecords = new List<SObject>();
        for (SObject record : records) {
            if ((Boolean)record.get('IsActive')) {
                activeRecords.add(record);
            }
        }
        return activeRecords.iterator();
    }
}